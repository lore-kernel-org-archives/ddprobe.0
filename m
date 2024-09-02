Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ABD185939
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725278754; cv=none; b=UA+ml/c5rHBsoOD/m9HlJ/dtR9JFWx+u5CJJ65E9LU40NWYkOCV6TktvvtGRv2CPpU4QIlwucBFYTNex7FCN/anJmU+hL6FlMtJ2ScSZvShc3UydB/+y5rn53U5rseTsPnC+ZyNqA46BmGZlIldYZM4W6CizV6JIkKi4clv+pWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725278754; c=relaxed/simple;
	bh=A+FTl6CIM/aad8fg/7eo4hNuGVi/71lU054rnlY+d1Y=;
	h=To:Subject:From:Message-Id:Date; b=I7chbp3pmYV1sF88g9HDrXBF/3iZW6TGchMArIwcKbW4sBmeXrgWL6k3yQv++DOKgBedy0LT/7kuRQHLIimzdZXEL4f/+JzfWseUYaS0sblWOdBNJgtWgrcSgsZg01aOFW14tNNkJe0JM4dWZFXkY7RyAqVouhkjDh99bCmaIuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIgxYFT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIgxYFT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6AAC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725278753;
	bh=A+FTl6CIM/aad8fg/7eo4hNuGVi/71lU054rnlY+d1Y=;
	h=To:Subject:From:Date:From;
	b=XIgxYFT7L9P8UvGxAJ+t/CveoWTPRnAB1ooxjKUFd6kqSiBbEaWuQiR4htn7nfhXq
	 RyjdYT7ZzQl56n5WrZVBr5F1AJHszOxIsyLMOfNpJa7zghzLFqWpJKJp6LJxgX2iy5
	 Ji6A/MVHD27GNhA0w7uiSp8+evumevYS7B/XMaLxH2MdPobGQSwWTHCPFkjknkvzLT
	 3DdMATgRFWzv7y+xsMDyguTCfGNfT/g7Mce7WK8e2tmuswbQvRDjq/Ytpzy1Yrpd30
	 XvuzsGA+bHTz5U2JWcGI9ICNP9bVAycBOY6Pasal7eWUcNllpcXI0vo4c0TMCxSxXa
	 rrzTbUA68lZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9960ECA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172527875361.29958.13617551676778289502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ce34ca75bd7c302efa25e52720bffec6edadbba789127eff37f7199e361c2f
Date: Mon, 02 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725278753
