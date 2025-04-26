Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323191ABEA5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745657394; cv=none; b=f5FgktZvmqHmig1WMIWtrIMYzQITXXaxxPVm0PlsFTayvXhfdGIhRdhChJ2qH5UeYiBNaHuaaQYWI4gPkrmuTid0jXzGRRKpGr8x0GWY+GtL/KQD4ueX2daX+PEfI05oUhFTNUATUMAuzYO31YK3L6EZQuRo8cXaPr9PR1D4SS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745657394; c=relaxed/simple;
	bh=6JKNiB5X4ewFzRMsOWjLLsOuWV5+H4bGuRXsbJm+qw4=;
	h=To:Subject:From:Message-Id:Date; b=hXji53Ewru/xozstXw4rLhbiJsgHJMBVwLah48YMzOTQsoFRL3P5+BZ0ek35BPKQtzmIVVLycLmt+PdLOljnRREyXMzCjV8Ig8i4V95EPmSwln9xOW7vxaNeUTxaCUdVDdQpPJc5KPJBuhoIq/e/k4VTlZx7uDysoHSHBl98nUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdUMF/HS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdUMF/HS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4166C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745657393;
	bh=6JKNiB5X4ewFzRMsOWjLLsOuWV5+H4bGuRXsbJm+qw4=;
	h=To:Subject:From:Date:From;
	b=HdUMF/HSUFgW2EqUSAPfD408LnYL3sTEcZOnqosOs2EFDBB1+7GP3cb/kb60pxOxk
	 7plBuFMfVJgKl/k3hlvaFnQDLhOW/Bs6S1zqroAtdwWd4Eti/fKKTHaZsy0DG1/IBo
	 L7YiTwRPrs4Z/kPjxM3Pos9LzgFz+fKAXsav1D6jNfOp7fp0vilejY8edojswKDfmX
	 h2wJFRw4VJh98hGGHrJaHfprHfGy8LrrBm8uQIlljVgUh3cOar69Wa4yK+jJAUIVGH
	 sO8CxfS/2d4Yd+8NTVF+AeXIYRy6iTJWgPC7UXCW6frNktV1RdeGPLaQ+XQFz+711J
	 +fisltMWu1/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF2C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565739357.316.15260500227975616753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39b4626197bf12b32c779fe66eb2cac32b7df2f78865184ed4d29456be2589d
Date: Sat, 26 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745657393
