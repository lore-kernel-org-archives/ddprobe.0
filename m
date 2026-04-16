Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEAC34CFD0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776347254; cv=none; b=VRG4fvMl3hUWLgpxxkoN8c+2lL8zPBmX7U8qYMxO9NV5a4RELNQHUGLgyOMPxQzSpAdHPTs6/3aUkz/b4wKU/v4U+St7OO4+Ti46qJx+8tWLZYhkyKXtjd/Z/iDqwqH6NRAcTJDjif8okJGEY+Gw08MstNzvjjjP6wvA2iunxRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776347254; c=relaxed/simple;
	bh=TIDii5JjH26/du45VU9gyXr2cmKKfmR/zYyfjqvyC6o=;
	h=To:Subject:From:Message-Id:Date; b=TVAkHaeAGBLVfTuvlCTw8gqYOvCV+6or2kqYfelUYAkrsidhOEkEjvS43OuADIJGcWw2+0OTj2rPT3r/H74WDN+w75a48oGlSlpFDUMat3qeLCO+tD1A6mehhgVYZrR/Ki1HguSvVShqBut5LVJKHjt/0dx+ts6S9BwJoO+2Go4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kab/sk6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kab/sk6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB971C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776347253;
	bh=TIDii5JjH26/du45VU9gyXr2cmKKfmR/zYyfjqvyC6o=;
	h=To:Subject:From:Date:From;
	b=kab/sk6gbzMON/wUswelbmiT1IjHBHQtqOy8ng3pfHJFVbwneLFkKmSTFjuDtp+9q
	 y+lBbGQRm8Wy6hZwtZIe0yQMyboqwMevyZbYGXDlVRELgutPsGxgxES3gqBsfTwWxb
	 oEUwzYfKboS307Lg34Z7eYyNDMUJwUmeBFclA88SVJb+x/uJyvH6m/e9QbMqV9yO2N
	 czjbaxdMcwY4QQqJrgSKVVd/7tE6Ev4PMxUL7cqJVc/mvtdNBZ2awf6KnY6TY3cHeC
	 F38zA6tqZE0gwDTy6GeKRWzRDAQ2yapxMOf+HwCuwjNCyWeVBOT5oo/M2vAhIPPdwi
	 H4Ehj4DMDwURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB76F8A17A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634725369.14956.9486734519471944266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b2f84073e70da6beb33f836041ed8438238a49f01d830f8c08ddfb3b7d110b
Date: Thu, 16 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776347253
