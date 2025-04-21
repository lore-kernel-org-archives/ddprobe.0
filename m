Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382362F3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745252996; cv=none; b=HK9a4UFxhEua0KAggxMMI0bw980M1M43qz8ftO7CfvyYbV4zpY5pfGAi6mp23efF8BJD0lUVBXANCwY4MzFWJJv3JRrcihO/5HCVrsoRqvkM6xOIRcJQ7NOgHXTKhMLkgKbd0HoPbe8tMq6EevQu56fqavY9dWrGRShLiPj3GUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745252996; c=relaxed/simple;
	bh=8/bSCc828EXL2wmoUpNa1LPYoFD00GfgfIhKIdSl+VM=;
	h=To:Subject:From:Message-Id:Date; b=MS2gHMtCBHCbxTYiLUH9E3rx7qyB7I642c9U6sqopoaae/QC8lnNf2WBHNHPoa0/USijm6Fv94oa/+mahi3Eaa+wEmrGonNsujVWAwbJx/oCgvK2XGuaESifsDH04AtWOb820+/Gox2HvRAZ5LKI5je8QfobE1Eln5fDR9GH+Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQxPT1fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQxPT1fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB60C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745252993;
	bh=8/bSCc828EXL2wmoUpNa1LPYoFD00GfgfIhKIdSl+VM=;
	h=To:Subject:From:Date:From;
	b=bQxPT1frbmHDS24h+pjhmDAUl7prn9NqHYeeiKVnUGakyMpBEDFksTvn25OeSMSKG
	 6yxq6bufXPdC+eCVu+cha+tFzJoMklf83fgNa5IOJiEN4jmp46IBFDN7UdRg2ug+8O
	 VJmbMsQjlGVyVFYLymSkEJcpnk0Q2ZwZXdbK8T+TqrIdhJBqRYOWTdGDrwye82OUj7
	 zZyng/2NN5FODvlhpCPPMyP2wRN3XzQOWaJdgN2DE35MwNZKISRELJIaDmL6FkDKWE
	 RnXhxVTet6WkRdKGUhyl4giCpykH0q246FLGbaeqSpbH04/eswckaJil32fs6w5/t1
	 zC7OrFqj+oXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525299359.5455.18330400802629109857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4a56dd30ef291b865586b74cef8700e1dbb8920954733b010223eff80913c5
Date: Mon, 21 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745252993
