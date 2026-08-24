Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423F73F0A90
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787587834; cv=none; b=ANgQrsPF5qvdPgocmryYUqSwNBbNMRX4hB3oWOJMoQe5cjo57Rwf6rzgPvqurExHkDMnfy6JzqDlNREo8fVbdHgKdd3shK5HGlm9rQoo6/MjPimNK2mqJQlcXiTKnvk+94kXVqXE9BVC2id7kYfqktGuIt6vCX+1OCrYabrmyuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787587834; c=relaxed/simple;
	bh=whvCzFMIJMt0QWxN2mcTF90eHQowRc1fT8PfzkhGrFk=;
	h=To:Subject:From:Message-Id:Date; b=St2fG5DTINGjMNqBjtrovhmykAqJTeGanUNpzq8FQ75/RYLi/xV2LJp+9Nkp4nXYBDYKBlDEBySPONBXwTqktkgn3D0QobsEJOLQpwaWgQFEZlA3rsBnHz7OO54hlbq5m5k8QcbCGqaJDdeQOWkPC0CX5x0vSp4XO5leEI6rn70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCutvbBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCutvbBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3238C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787587833;
	bh=whvCzFMIJMt0QWxN2mcTF90eHQowRc1fT8PfzkhGrFk=;
	h=To:Subject:From:Date:From;
	b=WCutvbBXu6Sjs/46vQCBmYxo9k61jgjy52Jl0l+74SQrk3b/ABb0uc3WikGaxMuHt
	 1z1AHxeB6TUXcxPcvZWwaqJjpbJve32DrUNgjOIBi1Vt35aZhsMOGF5ptSl/tJbbwn
	 ln+UeLa+uyKWdtCPmSTJI6zegg+VFPJbGYy+WhW3kfs8YRI9vHkUYsFfcJZCDSFBsM
	 1htp/JZOC/+iVQjjM/T4FWrwX5Ug7L3EU9MRh+KSnGjgE4z6GpJxtRY67IXx1dqNgs
	 A108XHJ5BSrfjRu4UrCPKU2k/Rd2bzo64HT30EoVqdfhpaZjbwcPNhUDMmkliMeNS/
	 Q0idCnla/lzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE730C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758783370.2052.12696721921565646313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83401c59fe811e41dff213513b7bbf72be652c7c049afa10229b5e9874742ce0
Date: Mon, 24 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787587833
