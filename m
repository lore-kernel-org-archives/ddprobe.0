Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C09537B030
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780122814; cv=none; b=XdZwefiSx9lSEtyyON8s5SWFOG5UcMJQRwKyZtf5D0jBKW+T6u2GfWjRqrY/TbWk7kas/RNMn5KSJqt0EsnG9IbEfBSToCnRM3jlZfceK+WouaOyrB4tid7T4f1DK1+xJsj6iyQL+gr8HAA3F5oUg75hRG1dQD7T3j92yqVoLGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780122814; c=relaxed/simple;
	bh=qQ5Pequ2LldC7Bc1xV1wT59ZkFHFzYXaYzZpjHdgvSw=;
	h=To:Subject:From:Message-Id:Date; b=Cbgdo+wk01wrESvr1tcdqXaAV0aHZiTQrIbDp/qhzvaVh+W8fUktn1jHv+Or/Np4/M0rtPQGRWb+Z9ZIwovxzj3nbGIoS3oJHgFlv2ygayi+F4Po3moPFANYvXBGYSVIOyKWGjeCSm4GFzNMiZy/hToO7fkKbqncL/MjfeFnaas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHxJgFdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHxJgFdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C395AC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780122813;
	bh=qQ5Pequ2LldC7Bc1xV1wT59ZkFHFzYXaYzZpjHdgvSw=;
	h=To:Subject:From:Date:From;
	b=SHxJgFdV3dYDXP1oCdpCrIm5p7rqX8d0Fw9A5fNnL+7MlG5CS9IhqJdvY0cb77lc0
	 gm8jwdvnYrZLK3sh0c1xk3tkQ5HymfDsomipCltm1Iz3F6eecwJXMe6Cru8P6C/yk6
	 KlLAh2feIYk/+VWCEvIfrQLZCKdtNYKIKrjJcL+ZRttxH/3jyJA1MGWf0pXCr+U99D
	 JJGfv1Lr6o4xLQkrdotR6sS0CcMVKR/MvUNZZgiCvJYVTj2VsInJKnOs2iJMz7S00y
	 KlnO2b5IHe43PpurRgVF1eXYZmrjyud85rDlXOgNNRN+FhbfV3rtL7OeQ3ofkYUCMP
	 /G0xGa3GCjUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB047CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012281368.21978.13631878937940962817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3765b088fcec3cd8381f24ba2851f53b01494a7b58270e3eee1f91c28d6ddac6
Date: Sat, 30 May 2026 06:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780122813
