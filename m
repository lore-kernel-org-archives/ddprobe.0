Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DDC7C6E5
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708185497; cv=none; b=SfufwLSTF9xzO/uJhXpfPZWOqrR0pwbGT9SiQvK+/8sW8Sr9KIMQub6kifXktXeTytBjRk2GtK+Xd+TyBg7UeOZm/pXZpZSfl2J84ou6zwulUijreerCjG7HGxMzvs9lrpVJa8Bg4SgBg+flZVQ0paR/c8peKc86KXU8vVentfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708185497; c=relaxed/simple;
	bh=SQLkk48ewzjAUhnrYRfjxZG6DngrfFX8OBZYOjO7ZFQ=;
	h=To:Subject:From:Message-Id:Date; b=ev9x+UVM+BA8Inx2r5LWqOvS5V1mTJWuc8EyLo2mKJrEn4rTlw2Rm641LmHFNvUg2i5HZrLnPGGPuKnXBHjpHMQ6wS8oQzpy+I+pCGZmclDa3yPhOnhlTFqjLCqdpeS5SOf5R+wUnUzEwsqaM+yxSwWN+1hIqgm8NOuwL6wGwW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGsojmwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGsojmwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D541C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708185496;
	bh=SQLkk48ewzjAUhnrYRfjxZG6DngrfFX8OBZYOjO7ZFQ=;
	h=To:Subject:From:Date:From;
	b=aGsojmwSTbZzpJl2gUJxKuobWWeq6kEVhb7Adk61noQll53l4wA+ogfz6KsGnSYmj
	 xIDNmog7TfkzOwTZxC55JpPQTI8DQcMA3Hs5Rcqe/jIC8Fa9/5zQ8L/MOae3RxmwNg
	 KZt/jZe7tEgXt/Juozjf17hhFWioWhH/FCqfZHZepB013cG2prdJ5w1UDffpvvj3OO
	 NMJ0f9+/Kd2BdXUGHCzvslKudfF7I6PnJ7Xu9ha2DDT5UWN5qqYk/dXlajFbt2mQbZ
	 Kjt7y+dIY0KRBpUhbOBeNuw5L5olWhBqEBsCHssUWy6odIFfFF+F8KTzPBksb4Maff
	 S23V79eLZKuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6236AC48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170818549639.17522.8613757333565533344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9a567edc5110c547d5b07b693b3fdce91fe8f7e9f02f4111efd9009b30226b
Date: Sat, 17 Feb 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708185496
