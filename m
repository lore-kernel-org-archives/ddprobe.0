Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E871800
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751875794; cv=none; b=YW7y7G8+tFA5A5rTt3qBEHlk4ZqsffSgQVey0g/m9cUr6SkGn7qzPY52twp9lJLAo14STaLJ7ofaNosRGuBNKEXqO1ogCfrYLGoc16rMAeSVDl530SKm+yXypJeAi1ShNs5GTgqhwfLcYc3FU7QQ7wYRpTJQSzSg1e3TPngD+1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751875794; c=relaxed/simple;
	bh=UmN5y7KevUrrzFLHeXqYnTP6t7KDFcenHZqFmeCQ/Qo=;
	h=To:Subject:From:Message-Id:Date; b=W6pfTU8dz+7+S6xW/i5rm33JL+MMyYRVUwGToIGdxHo0JFUmueSD06olpcMZsvRfVkw3ntI2AFia5smwsz4dlo68XeaGCL4sEmshVZSfIdakuJAqxlEMaIodDsH20nR9xo6lsMkPgGlk2XP2usimhFdZjTaJNwoQj7BPDVVQX6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw48lBQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw48lBQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1098C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751875793;
	bh=UmN5y7KevUrrzFLHeXqYnTP6t7KDFcenHZqFmeCQ/Qo=;
	h=To:Subject:From:Date:From;
	b=Iw48lBQiYaDg6vFrpjM5Ntjm2g6Rx0QCiuXbT5oCeCs/16vIBpY8fZNy7jxQPQhYS
	 6h8ALLp3KKYyo9sf9c+t+A7c7XjJVxSzPdik1r68z5QtA4bH6eUU7dIDkrhEFySBlu
	 +Hhuj+KsPMMaRerfgDZP0CCkrPdHTtfuHJFEUM04Irl+eRhgtZlWgDmU4roWf/MW0D
	 l76ULiIk+wznJb9CRGTsSGfiONCiYQXJ3+8askEwK0wB6H66E6vA+O2/JeiEGGQAll
	 fVzqsC5SrzVJfMNohdfK+CfWD6zlLkkKVuPOzq2qGEe95uyx/jEtYlKGSe8TrITBzC
	 EfjwXeChDck/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1AEC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187579357.17489.17337313903053102064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9d44c85830d97fcd2967f67835ec604f3d4ef82bd43f82ef58fedb7d298aa2
Date: Mon, 07 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751875793
