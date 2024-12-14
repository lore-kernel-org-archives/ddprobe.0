Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA9C155A2F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734177954; cv=none; b=mLTmGwdbN1TR0L4+morifog+XSRjoXtcR919u5kJ5LRRheej3g5Ebf7FUp71Xd3j8sOVxPvMtXWQbn2/INNBqxOIZU9Kl1julRswgmTPs/Y+ULFEF9lxsSuHUq/RFJ5rKJbwTPDBsdDzYDfeLd68sQJ6yZgTpfUmKaccQiRiIPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734177954; c=relaxed/simple;
	bh=9CVpphac7HBGL7Q/pmWhvDLBbdMXmKMR2QgXl7RbZAM=;
	h=To:Subject:From:Message-Id:Date; b=GG22Q2HWbgp9TDST3+sT8z/L6tOtwEk6YJr8/IowjUb/qBynVWj59l+blJMZzihCdXLq6e9bDDlBCDJFeW8SfkDdtuALFkH9Uywta00t1rUNvObCbeA7gI0Ne9miR8YGi/eyjQfI2uTd6lmmB9DLqaLfVtVDxh54Y/h9g+oVTy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T15PEPbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T15PEPbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB58DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734177953;
	bh=9CVpphac7HBGL7Q/pmWhvDLBbdMXmKMR2QgXl7RbZAM=;
	h=To:Subject:From:Date:From;
	b=T15PEPbxphM5uqz/fGrgaO8Hv54N6HsUR+z/J9UNWHp2IhGgMrFUqsM2QKMbcy91Y
	 mg4APA/cLq+MdM8ICjbe1xWtUh4jCZGcke7qyEWwpw3ODLv7Db307Y2b1RAd6XVI/a
	 QPoU0WqUMOJJiQsFxc0Do/mvHah3xm7DorhmGE4+cjuWhb85fwxGIpiH6aMPONeKDU
	 p0dQB8frHJKk4/+xJ5kQ+eA7XcTus11gsbd4MIfyGSJltWWXDEd0chEMnFTC98n79i
	 c/M/GuBSY9wKynt62gJHaiOJzoYLaro+svyqIraNJJyVFnrIYIL4ETismmIZKT358a
	 dI7ROtONSve0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96861E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417795360.10203.18115262824965066940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cd8979323d96c7ba57bb4b9d80a3b8ebd753f7bbb81cda65920e64ffb8a8ef
Date: Sat, 14 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734177953
