Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4232F13B7B3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737516354; cv=none; b=jydk+kHJpfxtZ8+4oHBoB4fCA29qNvktT3kXHgzM6lhqzrNYhh8geXYmLCL6gnEgRFTVyONIgLv/Altqu19yFdoslvALPE6VFZisDgcwvxiez1XJwmDFVHnGdO+QoBLfa8UhuvPvTmV6YAk8j/acQHCeCftgJzN3QCBOTKna/Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737516354; c=relaxed/simple;
	bh=8Ve2EmgFT2Qtf8+EG+X9qL6phQB0cdpfUnBjLBZxTME=;
	h=To:Subject:From:Message-Id:Date; b=CVVjDEwnD2ujxMbqvGGYctzEK9YNsP4mizXqNEsP+JH/UQhf4FY9+1PYnDOr5i92CcM3fRivGnhIH2YwrekJAXlcrX6unds5IY3M3ZMARxudgSNFsTRGrH7jfI4zn/l5AXgdqAcnezLOD/D5VP5HaWm1pAHDBIHACo65BtAy3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odv+SyMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odv+SyMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D6C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737516353;
	bh=8Ve2EmgFT2Qtf8+EG+X9qL6phQB0cdpfUnBjLBZxTME=;
	h=To:Subject:From:Date:From;
	b=odv+SyMAM+WSP7X+xl732qWkIW2GCpshGx1zOsio3azSd+/hpc8UiomjOh4SHSFq6
	 o8xcjMaBIkx0DGoKRRCbKocaDB8leE7jUk8lhn0vdqiodC6wcuoqNXhpwliDl8LTd7
	 JshJxQIe6eleIxP/hBp9iqrjhLHxSkclnFbhVchphyVK3g9yAFW79RIKx16UvXzz7J
	 gyuI48a8X85oNN/pfEXJtQV8HqXIX1IldZluIAxYt7R+yElGMtcDnmRaCPZkCnX/rm
	 9dy7HH+BKlz61pj8D1pvSztoH7oIAXBIQ0mP0XaCZW9Ksc/jDh2BDtC8uzchmfjrlp
	 uXiZA/lY6RSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9239EC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751635358.9826.18339599309810284644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4a518c640336b683a379d5c16ce152d1ad3d5a0df009206c453bb441b325f5
Date: Wed, 22 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737516353
