Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3647828EA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748182194; cv=none; b=cJEgpp1B2HRh/NfcYjxTQY+WEvo8URoZInVCxpmx++sXmHACYhdm1a4nDaj9E0z2uWZAYvqrakCftexU6Q7H6SqkESmxnTOKlZmFyDv05h43vta9oj0ahCXwGAZwDKGgddbmtbnurUVriQxmMYcOG87YEwiS8E3O93Tv+LZhbP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748182194; c=relaxed/simple;
	bh=S3aOvSjhrmy919IosU6E8dcifJB7s3MnP+vAtXRQJbk=;
	h=To:Subject:From:Message-Id:Date; b=DjV3xpvGEO68PUsk1Ik/hMYFmTKsJNTbyzaIKl9WL6sgBKI8RQtlHxDz7fFl73Z/1tXZGrurwu1kqk8Zo+g83yZw2bjJ8Y0OFEM8oCVCersBZbHaI3s0JFL1OKsO1rn/YLGp+9Mc6uRiT64cOo2oq+3OduQJ7EosNZygcoSDbYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBv4Z034; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBv4Z034"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A2C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748182193;
	bh=S3aOvSjhrmy919IosU6E8dcifJB7s3MnP+vAtXRQJbk=;
	h=To:Subject:From:Date:From;
	b=ZBv4Z03484fbdaWfW7sI1nBxKLBWE0zn2+7IcNKExCjsofIdg4tmZpbRc68aZkRZb
	 BnzVK7dqqA2oOyWLDDV9Ydjnj2QQV5ULVqgR4auQdFWwpWcPWPir0PdYUhsktKog2x
	 LveY5RXsXBXqr8NZYTGhbyV9sVakOy5S5j85oF5hz1r++zllZjKq0q5TMr9pO91QKI
	 ZLSx/nvoVWRLLcoBYLD2cJc7DB3jZ8Y05AIMsExPJ6AnUBeo2+f8moiSF7DuNcN2tT
	 3KSyjy36df5zuzZyd/AdhFVzxdE9FYjgPip7hxBW8F0RdbJXhsQsx9jldkXN2IV0MP
	 9Pj5VMRDVlUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D10C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818219357.5154.17216793700490429362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7bd0ef3cbe4877aaa549749524796dfc1b32b21ffb685ecea502395c547d7b
Date: Sun, 25 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748182193
