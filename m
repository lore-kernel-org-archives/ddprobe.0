Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC602609E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771142694; cv=none; b=uy7agsC2TdWe1pjOkyGMF0+o1JT1N5U1lzW8FRlZJaPVX5TMQi/vNSuWhaj4dLdm1gY8Igt4VgffZpq+xw1xxocX9zYr7xF+1pn/Ap6007cYjL4SxAqSYaK9NY3LP7bKoKYKGGDoeZrw4wQ4+RJJs39Duj2VfS7kOg+TGD++3Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771142694; c=relaxed/simple;
	bh=bxYVLsNp2ZjpzSBb8dU888DPIrNZg77mDXCzwbwhzEg=;
	h=To:Subject:From:Message-Id:Date; b=XrltSM63LRyAs6j/GqtDFlf7/X2dbNl75gC0H8tynD5kXTvlLSLUO0V/lLV872M6s7j17qhTyVPWY/9x32xMc2O7jwPbVB4LnKbhITc1QsqrCGFZbp3jQ3qSZ2gVwcbgOr44srUhq38FBNYtXMmfc0cdfry6ujp1gVpVC3LopqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhTUNKvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhTUNKvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB87FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771142693;
	bh=bxYVLsNp2ZjpzSBb8dU888DPIrNZg77mDXCzwbwhzEg=;
	h=To:Subject:From:Date:From;
	b=rhTUNKvZTfO329E52ulnIfZKPmhRmlNbtgK0tFEBp+8WBSeQ5TCstW9cg03/TIRXq
	 VraGkfdipooQJGO3mzxUZhNROor2wMsOOmDpK7PeWOezIyN95Rm4ZPKV7o9Ts9t9fL
	 6Kt6bdbmb1JKfqr5iI9qHZXIR6xXzJvLLE0DmzC4WtyY08MP2hogwvGLeguhn89mUP
	 qiUDcKzuRs8FV5V3G28pXNZR2WsjZweGL17voUSxHjahV7WeTK1FI2m7Z6EeOPrsXT
	 8r1mIK015vQgviyZsv3M/14d6M+tiMWEI/JKPx04FXd6DqEWA8hlHf52kCcaycB21x
	 WIZt3DiVusJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC5EF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114269366.14217.1958656858068954075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e45e5d3677d46c5be50ae4633c36d783df3b8af5a180ea6e5ef8bd8c4104d8a
Date: Sun, 15 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771142693
