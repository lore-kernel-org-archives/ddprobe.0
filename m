Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9E72BAEF
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722962754; cv=none; b=Zz+US0JSdyUao1GHH+hWcuoRnSuHtWGEU/PjOln0mpYDTe/HS0i6mvxkSrhKEgmxl+rJK1hphxX82YePeRLipRCl1PtSI7zmueo1uYaZLzsjU5g2n3gTrOu0v4FhDX0WRSBzMPW972ZHz9axNWGSTCVUdM8V28Aev0iFuqkDROA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722962754; c=relaxed/simple;
	bh=rH9yRXd06fQ30Q45ZsUJGS4sVLMtZEx3GuetsQFOg5w=;
	h=To:Subject:From:Message-Id:Date; b=vChqSt/lyB7VGg0wR852fdSZV9CNZLqepJM+EN3rcq7u2LeUEIOuUGOk/ZcfE+9ea02/CoPwX3122ZtiqXzGKhyY7Y0onWkwNI78wcaWS8vorjAXh7DvFKrs7LhskHc06MNjxDHcQZU+96NMtHTiRYOFRus8678VaCjWPnaQIiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfq/3jIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfq/3jIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C291EC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722962753;
	bh=rH9yRXd06fQ30Q45ZsUJGS4sVLMtZEx3GuetsQFOg5w=;
	h=To:Subject:From:Date:From;
	b=lfq/3jIpVHgXaP6NkR561jjFh1YJtgZqPqv38FdfGphTH2uxBhW1y+FQvBCAkk3jw
	 oZ08OfbIr1Q4SfHd32O72/DO7ElFUfZyRRZQu+HfhCEQY9mrW1RYdJlWKfUpiaBqpA
	 hq/kyZ4YqE6opE156uG8cazED1NxSJ+c8ldpqA9bTRhq03WPtgxfPf/AOwVnHx4tzi
	 um/FRkXmXYmyiKXVKUEcL4S64ojgBJEelUncTKzkA+UfyAki8xzNlZk6zSkmGuhQbW
	 3YYeYEX+MmovpWWPD6qzGeUm5t5WHSQ2SovSl7wGdjiNG11amm1Mc+7DBRXFm4Tvsn
	 hscCHK2epnR6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FABC52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296275364.21437.16163400476723605008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81706c33a5d69182065ff0fd14c90eec9685cf089b1a8287175d5b61fcf69120
Date: Tue, 06 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722962753
