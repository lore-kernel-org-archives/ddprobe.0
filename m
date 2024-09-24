Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1368774BF5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727204754; cv=none; b=l1QuGUb77HB1tLXMOPPEsttp4+x2NPGfem2IaLxHE/AG1EqEjsbl4viRsO5kdca52OpVLHKmPaOucmBPH/068rpA3gzzsbnck+rpkxZDNAV0d4PeH34WVq9ojxSh7QRewyIUObKjOvUxUOOnFb0Kx9v2kl7Uuk6mWb9rgEfIscQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727204754; c=relaxed/simple;
	bh=AMr/KB9feKYAafW43aFKP0iR0Oj4HIQ8Df3LAsr8nlA=;
	h=To:Subject:From:Message-Id:Date; b=EmpFPrw19Poq2LeX3ubpPKxZ4fBbqwiHFfuyQGOr/LWMj6fGnXCvi2eNxNyClVR/ez6NHNVdQCs3g1UxPP8dygldWAqoRz+LM8HrXYjEEQWWd4fCR7IVhYZR4zIe837exDpQRkoPNi1EymTZU7n4ooPd1To/RT5f5BToxhCUDiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeQ3pKvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeQ3pKvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F5C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727204753;
	bh=AMr/KB9feKYAafW43aFKP0iR0Oj4HIQ8Df3LAsr8nlA=;
	h=To:Subject:From:Date:From;
	b=KeQ3pKvUG0xMdfRyKE0mL4L4qlGkw+Fx3ZsRP0AZ26QxX0eDAS/fKczbPoiy0IrLm
	 1maJAzr/esHDiTxqOt1+oMKJwFvY9PlaMz0MWCCTnTLPK5reTdsTZVVR7jb+E9k4/z
	 zT7ii0ZoCINm9Kkj8+uN7hlFU5wWLa0TbVtniRIpLBlaW9Asey4XtBnJoDwwJuccTY
	 QbjQLetJr/E7peaMoh8UBdnNNwAEXmml9DlM/rHcvpXoieLkrqVRMihrj/F0VeQBPi
	 mfIgq5qQf5wUylTQMVL9ZQj4wa0pXrKaWeOn6l89qEhpw4JJB3HI8jLm68TFX1RgUi
	 ol8t6tb6GUgwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92572CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720475358.5409.15598923371006293829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670da68394d659d423f6c8f510e59c77792f980d3263d18468a2ee9acd925a2a
Date: Tue, 24 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727204753
