Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE442D3A86
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776797254; cv=none; b=SCNWVF2M8P7Nr2ldhBHx1Zu1Rijc9c8YUO3ceWJlTmV7HM73PDVGHhN7UIRUu1RCY66pT5rS59N7x0SS8EyuPKdhk90a0hmRMu72nvqt6efxmBjOfMnZSQVNCWuVU+FFzY3802wWX3LJrNJ3Dc22Ivx93mcpj8Z1w8LqEbjzIYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776797254; c=relaxed/simple;
	bh=np5HeY4d1pMOLRihfHSOFMjavOfO7nmUe9Q8dNjkBto=;
	h=To:Subject:From:Message-Id:Date; b=p7gLw5/3F1p7zBDY6GQFxZ1+LlH0sS+Uq8lrSX32L7HH4qij5xgVpiNN2rK0rPLmCI+IsdzBYil6AmAXHLzvFUpPBnxxMQi3dmDdigFPHoAacF3/fpZ/VLr03LEvJFgAHc4R2UdYWDrZXj1kzgXne5FHSgz27s19xumAh37yidA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeoLryO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeoLryO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3201C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776797253;
	bh=np5HeY4d1pMOLRihfHSOFMjavOfO7nmUe9Q8dNjkBto=;
	h=To:Subject:From:Date:From;
	b=aeoLryO1v6L2h7U/0sEdG3i3TBxcFKCeyOH0pw5KVWXHjKpfA/hcDH+8hgOQR9xK0
	 wdu34t97+hT3DvWKg3u9UPN1oy/mECXECqqLn47hP0L75/sTH7cgA/XQEpbFqnikQ9
	 BVgf17gZ1H9JbViwdVppd8bZ0vCr4C42s/rpTrqFNlqNZ0pBk63QP0YwJF7/HBfTCl
	 75gaeHzuOyzazEyybTOc5QwnO9feJv24GH100peesIGr+UH2W5dmwYTdvGs9WUF8SN
	 OxYcV3WLrhmy5BXiEPQD9mYfasemyz37Cwwm5Tqwbi0U72fe8udTc+w8HcMtP7Bqvi
	 fNBJSbhYhYiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF9F94CA5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679725369.15782.16953547780120533472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c376f743c9739ff5d05a76d2df67110267f039678b7b55918632c6ba428b4cd0
Date: Tue, 21 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776797253
