Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1030DD1E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758145194; cv=none; b=DFhr2c14qf7HDyOw/nAfVHZTUNJBmRNvtqj+Vftic7AR2A8O/LNcM3JN/0RSDk2ILcj/7uuZsjS3H2wEvOY5dybwPSkHy3JN2NKIgnpCqMNXMYYCRlcqUyjdjDbseQBetPjZxx/orEOo2AAxEUj3Sj/sG3hP24jGfPnEB28Tbhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758145194; c=relaxed/simple;
	bh=PWCEWNDAgF5nlu7bdrvKq/ciZ5z5eRNOeXkfOuogZ68=;
	h=To:Subject:From:Message-Id:Date; b=i+7Ai2OIDOZWWf6FfBL3G1/h/Pxmqjvwxj8GIK5G+mZ9G0JgueKiEoVvq16ki1qz/b9/WJsf7RDobh9+iOVLN02OnByJEFoE1i0zd6224qDNgdjAxkQGPpIYJ58SFSa7XgTAJkFZhAGpLpo+Cm8ETuWB3wbII/vTDHVJGkqE5SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoCt1zid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoCt1zid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F72DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758145193;
	bh=PWCEWNDAgF5nlu7bdrvKq/ciZ5z5eRNOeXkfOuogZ68=;
	h=To:Subject:From:Date:From;
	b=CoCt1zid/1fUBsiek9LSK1Frds4PMNerB5b0w8zdpOQTT1w1RG8NAPJyaCL4+GlK9
	 esZJm5bPLLHXxZlxPeCd3jLW8otCA6X4gJZ8/3fgojlehSqcqc7ls9FIjoWACplhLF
	 5IY4+oDzDJL6BWT0e+zhEt6yQfN4fXSG6Kdk18QHKOvqCTtU5+rkpcMoUKvgneibDa
	 hDD+40kGvFdRATDpkpo6L9WYeW3nla+e28GocYXdPwFuwZZHq8YRxbs3I8aViMJwcV
	 Y8YfGSzPjwfD9mN/Yf2HyDGXYPZE2aWK6jB188u/gKrB3nFqS9JigBkYTzMPjIPnM+
	 1jSlkkGls+zxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90132CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814519358.11169.11025569382412766151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41937ac412227678f8d57190451aeb2533ccb3ef91cc5a71d1422214b7e9d739
Date: Wed, 17 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758145193
