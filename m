Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051551DFCB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705492097; cv=none; b=nuSQAkOZbZ5Vag9LqqM231bM6PRuuarqQUPnST3vk5gvk5rCpDnqlRyxuD0vz9Y9X8il2gbsRJMxi8UHnYZvfgDXC9f+yHAAx3LcILArH8f/ENDvZvew04NiNbmKjoR1Q9cyCfLEZeLFpAVSdj7JjvSgwxWjP7gNC2fCwmbG+j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705492097; c=relaxed/simple;
	bh=30EQYL82magP8Op6QkVl1ii8AYNXaCvk8x8jdKudd7E=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=CrKt5R4RnnMzawt3B7cLmikZOTJC4b2tQeKO4oQ1dvGPVMK74rqkc6deT+n8q1ErPn36CLad1aREjUDqzSBvrEks2qy5dk+FKbvToxYwhJOslAqGEuBkQJqjvereoCnDR3beEgmGpxVragF07bR75/jOvEctSVlFMfVrFeDViiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcGZX5Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcGZX5Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A052C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705492096;
	bh=30EQYL82magP8Op6QkVl1ii8AYNXaCvk8x8jdKudd7E=;
	h=To:Subject:From:Date:From;
	b=mcGZX5Q1ZWmSRtUgC3gHAKXxGGGHzId6Zwm1giM/v9SRcu1iiCzTvcfDUuts3vh8d
	 ojuTABU0lbgip5c5GcBOmvERrlSVoXQKN/AuZ7MTPgVQliNMhCp7berxf7cAjiZQ2s
	 6iRR82RBSUjy5EV87K1acXwmLiWsC98MamDs7xRZOvFPvfJNoCpgt4JX53Nw37nk/I
	 ZLJHnpdXQ4T9in6XyBfNla9XodykYHK9ak3DwfCuEKYwPpkGetLFpzvjItnkK+dFRt
	 j+eqPT/DLVXwbgeiu0GdmpiZmq/rFJdxPL/h9SFHd/sWyh6Vr4ZzSG2WhLUobBz0v2
	 OLAS1wJHepSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AD4C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549209638.3834.10705060048787111154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42393bef133c797a27b987d776dd711e6921ce59631dfefd86c2cd36d5c7ba56
Date: Wed, 17 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705492096
