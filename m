Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D853930C35F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772334893; cv=none; b=LPI2kzuJMB0KlTVsF8egzhtwvAH63UUyEi40jujxb8vNI4yXePONK8Gcjgv1zaA/HiD6OmqJ7xe43o+63+3Gz62xc8IQGjglu2n19HN2pDBFq8y3wUNzLNqfWZFcFIaBCdrn8QopMeKT4SIcM8FH7VWxZ7wE036pKjpSi4tzpGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772334893; c=relaxed/simple;
	bh=x/wfJZj9R/Jixgto3CdEFfSSTUNA3euues5FxduH4MQ=;
	h=To:Subject:From:Message-Id:Date; b=QqRXfXCgOs824yWZ82Id3jl9plxNifgxUTm1n7jHInPpraiFoHobb1C2kbQfzGRziaVBjHdgwdxtOOt/VeRtJ2s/5ooKmOadFC9GDk3LFsj+CgcFgt2RRHmuPsYMsTVvDP0/CYX84LRTZqqAnqaWN4iQKX3zqc84KlwRYLQgROo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbGlsE4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbGlsE4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D94C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772334893;
	bh=x/wfJZj9R/Jixgto3CdEFfSSTUNA3euues5FxduH4MQ=;
	h=To:Subject:From:Date:From;
	b=CbGlsE4aXQFCuLms+RoWNDHx118Tt8bdMylvefX0nqTK7FZB/pzCOv/VMyeXL663l
	 t9npq4LIcwtQVSgWlEc0RbBExIsNRKo9aVKSq9PlX325j2h8D0r3MfGmaxTMkkUEB0
	 kuGpNupOsR7qRnf7W5FpYCda9BcDHt4v62gfkHyN85Br07V8j3cdFNrz59ynxk0waX
	 jxhXXrTvNynO7zF/P4YM/u2hYoTuAQnVV+vCSyvLEcDLsaNiPyitWvfthD5ZvbOuFr
	 bFFMEF4iHSz6TsJHM0xMsZ8jbwJde/0zLsijK0yUoII5hMxqHqoxHZbxCd+zluhOlE
	 /l/pfn6T+vShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDC5FD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233489360.11553.10736514435318663303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177dfa2eef22f9b290a0677bb8c74ad503a9b87294795b5f101509e33322c53d
Date: Sun, 01 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772334893
