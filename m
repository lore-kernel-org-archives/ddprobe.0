Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7EC2F3612
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762934394; cv=none; b=W+bqaRguNYwXkKPF2SxXc0ZLzjjRboPy1vdZjcoF9Ex2Z1Q+kxGm0QoPn6hAps7dO7rZLGrW+Zp4Eo42RTzDi2jazLEqzG4oX3qvubPC2ro37wOqcYED8QL1ztx2pTvRC+p0Qwqg//lPmQk8GRv2AVgGcCweDXgu+flC9vRFIn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762934394; c=relaxed/simple;
	bh=QvGJiXuYeVG7NUs0iSwA1hG5mfAJhHtg+6vtXqTunvc=;
	h=To:Subject:From:Message-Id:Date; b=Tua2ciVut2f1OSjYgfnnY6p36J27tnIhxgjt4pu86JM6ITIeN4R+4GizoJ+CY5okPr0gvcVRXeyLAlbtqhmS8J8K48fChik3etbktb/1sRlkdDFXXI5z/TKTb/ginc06nmNQuLkjyfsSCRMPDEysWwqTmm1WlQvHW4DcjdA7Kbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABOwvUUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABOwvUUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D171C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762934393;
	bh=QvGJiXuYeVG7NUs0iSwA1hG5mfAJhHtg+6vtXqTunvc=;
	h=To:Subject:From:Date:From;
	b=ABOwvUUR0XKJJOkLBjBEuTb/YdQDgb5BheuyhOb37CwZURQ0tCENKq4QvPCL+287Y
	 2F6sXOeB36ciZUAURbFHb63Van9WM0fbwuBW+Ey6KBmFLHRPJ+R2I6TsZZut084+pl
	 qrXVxkJ/VmvFr1aS36pTEOsvYCvrEHc7xmsriR/C0z7/yRYQC4/YWD5fbjg1ELarlO
	 mIi7ES2QINligZZ9A45aW9QeQPiGE+s7//MaaNsWxDc7WFWXk9lXQZEzWkM/OAhwYr
	 rWvIgQmWzLt44gZw7lN22W25+HuKIM2TUlevq8juD/PuNy8WnzRksE+86ZkxY8jQPk
	 7WzeR5wL1OYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0FCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293439358.4406.4633659175950423200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edc7dfdf18574efffe0e852a305afea620f4a2d45d66fa967b701ddd79d84f3
Date: Wed, 12 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762934393
