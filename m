Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA4D1F03EF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744402193; cv=none; b=NdEBKQsmCf14Fo/5QW2oFG0UZV0bbyQuI+2g/TKBiNgzuek5oxLbvIJvUIrWiXwnlw8xq64I6XaVa50bLVEm0b++SzFGuSAyUdPxGc37jb9AmI/jP3gzuSdgnAHIUBBVazoq3oEYIQd6C+6OF4RmYBcUjsIKk3t28Ux8w11gJkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744402193; c=relaxed/simple;
	bh=YqFkLbF6ZpHuJSkSlqhe74HJxrTp49CkkpVHpcn0TmA=;
	h=To:Subject:From:Message-Id:Date; b=RF+dHSi1OynKNBVIRyH50cGLyCEApstIluhYlRmKZoA1NNXywXozA3X9meKw0LghWIRREr1vj6JrKqkv5jhE9rLXpAT61obwGWQZExCyHAV8GLkQpqBwRCh7U72TFwEFFpCXBgFFHJYWOjOZGd+2nj8Y5Un1bn6r53zE5ATgk0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snyphlh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snyphlh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C84C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744402193;
	bh=YqFkLbF6ZpHuJSkSlqhe74HJxrTp49CkkpVHpcn0TmA=;
	h=To:Subject:From:Date:From;
	b=snyphlh3tp57/l1OD7Z9ObgPOMhKKuE/4U6LhSg6X+ygSx/mSFraYZI4OHI3hijs2
	 f92w22tBjyAJUj4TQpkeewZjYADOjpKm3i+RVzMpFO+p08LKXcrhA5wpSDqmv+6IWN
	 XgvuS0sKjBDKfIXOTt2evu6XstYKHJlhSM9pPOfDq9fASC4f9jJbNmLFqNCnF5l0WT
	 hcGS/VovZN1At9znt5bgemEzS5sCPs//IUguNp0WpWgg8+QD41W3abIdAvDEfJu1XJ
	 ZCp8XtsVmvsGn2kcicTEXxVna9n+YI9p7cMs0lLs0Z6IQUAk+XhCwqrNPcYNDw2FlR
	 5xiEzwy88sKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B90C369B1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440219361.31059.3134013915295897315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d5354ad93a6a8cce36278209dc437ce9535f7544e293566c65671261dd8647
Date: Fri, 11 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744402193
