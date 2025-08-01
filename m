Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233117BA5
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754048994; cv=none; b=Ku9c/POAf0G3mXIeksJzoE/LMq8Bb+qTh3BaTtTSOZnlxGC+92gVkkCEzXThoJRw0ERyzpFfZHhvy+y52bY9xEHmS+H8SDztHDNH879f0sO2M7+D1sFnJDOYD2Ra2CdmCOJnGn8pWMsjhRSWrvFiHWKOBCEz4TlH8YNIgfrxaAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754048994; c=relaxed/simple;
	bh=vRCNeSrrMfyBI/cnC3YG9omLvDPmymJVdBO+t/ooI6c=;
	h=To:Subject:From:Message-Id:Date; b=D9EKDVEdC6uKbwZZ8y9/CX/DUOltm9LKZImAPyZQIGwKhG8+VrIaTyCaChqbkwSOPieC5Tf6V6NB8iNfjgLyK3lq7MpI/+XjJffi1g4sj62WL/VD1Hhe1sX7doMaONse8SJQiGD6/pyHgPNHSeznmbOhwxexGAS0NdebiJ48Kq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmIb07Jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmIb07Jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3550C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754048993;
	bh=vRCNeSrrMfyBI/cnC3YG9omLvDPmymJVdBO+t/ooI6c=;
	h=To:Subject:From:Date:From;
	b=MmIb07JyO5efcZGLfiS5HjfE3klx3n+bTA7ZhREkwsLPiSyZpLCDJougPob7qt305
	 q9Ko20CM8ub1JNpD9DlZA29fNgc+SIhAOTKrtf3uIubbxBXyc02P6JVEkeNw9dK9Rq
	 koBcQhR6bEaTDL9Kcp/bydBU29HbMjG++TLldHphYYcOxZu1oAAsnNkwGHioyf7Vx/
	 qaCYp/lVL4UDW+IAn1ayd6ydLBHIu/HpS6yHXk36US8f+MdnPuKIc/ciNHOP1iMLhD
	 ykbEhyNZSdEuF6eI4TPU9zoKKRN1mmmMaoXNBKja/rF43kR6IXWWWHT5OVDBwA3q2n
	 b+Og1MW9SWI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B1C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404899358.13751.15216660529904345308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a30d4c9f7ad4d6af8cc978bdd7e6a938058b9e88de09c4a754cb09e10e1c32
Date: Fri, 01 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754048993
