Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F3C383AA
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710158897; cv=none; b=Q85OAfmRwK/uBtLA4ZIVP1amP5IpT/UFxZKh2nJvBpYTNrxZkskmPrXjwE4pjtzDJwDi2I8PFEUjHiT8zfV21S8oVRsc9IOsdEtPOSsTi+3UwrRBiGEXv2nysikUv/hhor/yN9PweXNUHiClx8R9yNah7GMKilpG9boOonzqb9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710158897; c=relaxed/simple;
	bh=9fPZGWJ7mxrWFo+nsG4skxXXJnXT0cMUTuF8WsJQpEM=;
	h=To:Subject:From:Message-Id:Date; b=Ll2i9CQdHkfhnO/Vfa1L5qtenKzUfHr6rKyfldAf4z65SQbTr0lNlO8mkR24APCsxGMke8uEDLAmZnyS3EEilCfhqqhX1MND3Bjx4G3Fy3JHYFKwUgI5Qdk7vUc+PpF+ukhI4DBaYMT//Xs6+Ct2H/uXpYa/YrhtGqLKNshCLe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJufA0tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJufA0tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79088C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710158896;
	bh=9fPZGWJ7mxrWFo+nsG4skxXXJnXT0cMUTuF8WsJQpEM=;
	h=To:Subject:From:Date:From;
	b=rJufA0trDD+3cwyoKs9DHJUlLjwT0AQ3UCXNJDUT4iO5AbCRBahmrTQeH0xmDLeye
	 TTnA2lZ6hjbisj+GJ6H+sY5G7pvXBQh/ggVO5wzam4KCSsl93rjULzp1xEkf9PG5i6
	 nhWjZgDaFbWF8UIdZyCO4cSMD68K6LljSVyYclgNXB+YOn0M0ASrwGOsbUupB2eHxL
	 qne3WLnX9HROwc/c+Xcnde6y694X4EdGrRKo4eh4Jiu5skvkLbx9uxpqX7U+c/dNqY
	 wA4I0dsabqNFbrKCXE8WFPG0cTcdpsYI+fWUh7RNsWIuGGdNz/zoHhkxkP+JWvg84s
	 8H40B1niUsdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4C6C54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171015889636.14103.1259207835936573767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2944a924a5e3d649fa48cf16318e1f0235fb989f6b63f2b5c1b7bb600b40f3
Date: Mon, 11 Mar 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710158896
