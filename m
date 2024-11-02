Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341AD433B9
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730536554; cv=none; b=sU5i6nD16+g1oZ2sm0MvkXCAg7fsN6CeNBWVvA37uzTRqEOh5ig9zv2iOQ2k6vnB6dzjKzkgYgZeixR3/b8Ksx6IpfJxqiNVMDSIvPt7LC2O4hKf6GE2keaHdEWVojIZpSiUK2NIv64thewYByvkqKj3PtrN5V9F8OMM6qqyzb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730536554; c=relaxed/simple;
	bh=1umumrff1U/uLfLrtZ9YEAnhZ0EycEHSaFLZrWWFWWg=;
	h=To:Subject:From:Message-Id:Date; b=tXL2Juv61rBvUQmXtStebkKzmvTQlOcRhbeOb4h0uCCrTtMm0nr3xWHlNNOFachd53ZMqrqERkdlRhGcrfDIChxkRRO6g5/qEoBq0VlEf7rySBOK8q8qAeAm94O+sztWEg8wKi/NdAHeno2oc+BL+jl2XpErkceLNm7XD+h6DVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqfvJ/Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqfvJ/Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB247C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730536553;
	bh=1umumrff1U/uLfLrtZ9YEAnhZ0EycEHSaFLZrWWFWWg=;
	h=To:Subject:From:Date:From;
	b=IqfvJ/Dy0Vglg5fiUL3TyTGkTu6XmpgUNieY9ZZfxFVhkhjJ3eDFzlIJkEm6i1s3m
	 WavO3r0h/5OrTcDGdLC/z/S8al2aUFOL45vxsnaSQCJ4v5qc83ygqDetYMCna80SrR
	 EmHnyE0afnCTguiQJI5Yu0S8tJqPZ+nDLvRy8UxKt205WE5HwBgwa5OSWJ81FQhPEK
	 Qt8dcS91NDkWfL0cDDTWs9AmxN5Gs8Nxz+Lul0vc4lFd3NcLZIJ2qxCiN+1/o/dsBe
	 EN2shCmk/jo7VnXyjF14UsSSH8CPFoRKphU7iUbs31jQUFrq/LNuyT+uNGh9ZnB62M
	 WnUiWpRqX9V6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CACDE677EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053655360.7205.8588822122722795831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c518fdda324bfaa25f70f453b18269fdd85427132e2bd136d21d0a99f8c3ba
Date: Sat, 02 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730536553
