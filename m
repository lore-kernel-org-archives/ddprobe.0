Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43314E555
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779643354; cv=none; b=rdx0kNSiyY7HkDeX1nusSAPDqdt+k2f6W3maMcdp37AmVtiTBRvVtQWPFKSlvpT/J6hLHCvrfWRBpP8IVjY6feycOqJtgYAdaZ9CCxh/g59QVafa5sIsB6GdQHMuwJAKFjWUtdlnsQGtJLCvV1HdPcsGpnm8d6A/b7hQgA2Sugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779643354; c=relaxed/simple;
	bh=xKKGj3DWzR+oQqMMGUpPSucGQkxrPXK0uX21jkAr2OQ=;
	h=To:Subject:From:Message-Id:Date; b=I2tVTNJ3u9Pw8r5nUfasarnkN3AqjVCfWMcIOLpc9bu6ROxscNpN5pWaxNNijNyiOjbwPPYlO8B0AFc+Xfcc7CjSRabxCzlsNIMVb16pVcuJQ8jNUK7+hV/5pBaRQHz0zIKYoxkm69SPT5fsQq2+96Rs8gD3Us57kfKb2XBVVCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMg1wpfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMg1wpfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA97C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779643353;
	bh=xKKGj3DWzR+oQqMMGUpPSucGQkxrPXK0uX21jkAr2OQ=;
	h=To:Subject:From:Date:From;
	b=eMg1wpfKaOO7Z8ukpUrqkaEIP0QtIqh36Zn/axa4691TBuK04Y/tebmNdcY0PYJsV
	 FbYPE1GDGUOgAsPvVSEoGQzkM7Hufd3jI3CXHNNStb2qcjJ+CcuMs+2zeIxZWs9Z+5
	 7zzZNU1wfHe091tdo6mqB3zGwzDD3s438kC6J01zKePd39GCzerb5svsnR0XL6NxR1
	 YEnoq2cN35JeR4O3cRjved3F0fvY7fUFksoOTJDNU/1nLRo9r40uf7SQ/JildX7UFX
	 Xr7Ncw0mTvWKh9EjHccqzwCqW1RlfgBu0AktBj8TGiYlYbEeOMDl4NYnDWGO4fLkEF
	 kBt5XnblvESng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25AFCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964335369.25662.2976531998478238511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daea545a2cb47ae67933c8dec0c64343c82d2181823d9859789856b2f4e811e7
Date: Sun, 24 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779643353
