Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BE738AC8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782542914; cv=none; b=Dd0vGs3z4RO2MU+Qq/Ns+Ef6q+RCwgqbInudN2dm8Gc+ivFNEkCOjQjHIG2m23tTEMbc/jszbbj4ihISfmXp7QdQMAADCN0QMSDCQHe4K7tlDJpFXRmrCUo59K3YGJYsMTy7t/yYGvxdWCfTiAXsTSlZqH41wAvFEezhPVBO1rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782542914; c=relaxed/simple;
	bh=ZV0CvaXBEyJBGF3fM2+OXT4lnejG/USp8CXBJgylVpc=;
	h=To:Subject:From:Message-Id:Date; b=Q1lKu68wca7guOUOf3Dvq9B7cysUBxjlPo+1sWKtWeasUoI96sX4tu6eaPmW18zUhfzUPLOJhW/xclQqyXpYBb3x013z9vsYU2fzYZCdt1pib5ZhD7gfoUMn53Oe9eMBmC6qg+iKNGDyXlozngc8jYxEDI1R1Rz+90jpjxhmZjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTc4303w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTc4303w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE533C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782542913;
	bh=ZV0CvaXBEyJBGF3fM2+OXT4lnejG/USp8CXBJgylVpc=;
	h=To:Subject:From:Date:From;
	b=YTc4303wzecKKXzh1EcP+ehJ0k1OcnH50LYKBKSzgONL9hiCoKATct9rOjGoWlQAY
	 +ojgiTWPhWn1APi2GDySlDieb8fF07Tntvu58u+jhDZtSp7qEbXXBbtPBLpcdAzuL9
	 zmuLilqOFUjBDerKZ1pChkY4vTPegylf0rb+tZXQe/kgZvKSN5igFeDqPGa6ef2WMe
	 3XB2rOy7wHZPgL9g3e9YjWEmhCuR9IKHGfR7m1MMa0JPGNJ0qAcf9FbT3bv53Dz1//
	 koVMAICne8UtWZJDmnQm4bVwKP4tyHzI3TbKhbSm9xALeIj86cuQ5tC+c1WSF5WG9+
	 crF4UTFYcBUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B469CC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254291369.25095.17509388875591280105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbfd85ffe95aef66d6b30fef5da3716e2337557a8e1e6f6e41c675193e38b03
Date: Sat, 27 Jun 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782542913
