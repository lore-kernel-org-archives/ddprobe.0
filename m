Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3CB26B74A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775843853; cv=none; b=q25yCkjY/eZ9oT7w936T3AE8pqXRTnUmWkXUmaV3lDKy86YtVena4kM8bYSdU2k8xPKbXGbt/wyhbTt2P7hDZdh3Vc7AFltmKCPcTJwRHmgccHQNZbV9x78NeMJ4mf4kNvW2OpPiWzxHUw2eiV9B8lFWHeNqLqtNtjZaxnsHVXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775843853; c=relaxed/simple;
	bh=/xQpPxqvgErk4kzFZppmaLTQdgrxjBd559Z2SZTtkQs=;
	h=To:Subject:From:Message-Id:Date; b=nCtbsZBPbEhjXBlUidFxzTju39xyKNSGip4prZoY6i9XMa6619cf2ZFtC4+jgG5l+6tZHRm6TLhrRQjMu4z+iozYz/MvSJytVuNZuQRQJR24HDeCBI28lQm5FvARIG88jdBC+VBKRAd2ivwFrnAGWFaNIWxUGDWRQFIL8HgDau0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew1ZJcq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew1ZJcq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C014DC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775843853;
	bh=/xQpPxqvgErk4kzFZppmaLTQdgrxjBd559Z2SZTtkQs=;
	h=To:Subject:From:Date:From;
	b=Ew1ZJcq6Wycavz3GYqlAw6jbkpbWHKYkRppaHSigtbS+xs21dQKbIphIb6PBVaQ9R
	 /kIAZ55ggbRMTfJ/S/QNdsTkCWqiXhD0GzZ+t3O8VpegHX8ggk9Rs4A9v1tW/h3P86
	 /iWNNPJvUbOkHdrKk2I4sjqzprhEweIQWLKF7eAYHD6ZTO238CLrcLhUk+MDanRcMn
	 CIRrTTKhgpbESPUwYEwGm/kZnCE2skcxLEQJw7gsojh/2wIOz2MvO6ziqQ3QnE0/9X
	 NUiWHXFcONbJ5CAO7pMpfDVeqtBXxA9ddoHYzCK5dlo3GOaTow5yy0FCVctgh2CMEn
	 g3948Qu5Q/eRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9BBF45A0A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584385370.28237.8587506580618059592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999956b2b34ee0f24cc45bad1ddbda4f0e5532984c68861ce3ef6501c95dd7aa
Date: Fri, 10 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775843853
