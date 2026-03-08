Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB6C23D7C2
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772949894; cv=none; b=eIVfR+S+v6wmu1Li9+/h3lR0aNRtBUp4pL/J7Usy4dJAxLz4Cn27+KNi/45iXw8EbFo86KrwWHxeKXUf5MZLtBbiDj7h+hcjkZ5OzoMLPjt9Y44ucrRN13aRjBpU6T2lzwBaLpZztm4h71aoa3uAcAlL3R85MYQdwfp1OVAeze0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772949894; c=relaxed/simple;
	bh=2OaVORdK2rLAojTpNeAdWudPRhWdmSaTg26y4VGUv7s=;
	h=To:Subject:From:Message-Id:Date; b=j5rt14humt4r/t8pGO2AYmaK4vLDbhyf0TgjOWVKzzaQwY5SufylAA3jA5GFhyY/IbRk+N31M+24YZYRLd6kNtDz1ZdYgUYJSkYKYbZ/laA6bTsl9CgwCg/uOxZGa1Wx3+KxQz97I7CboeIZezvvlHsL3aAEue7MQ5NOh3FfcN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzTXjIKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzTXjIKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8863C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772949893;
	bh=2OaVORdK2rLAojTpNeAdWudPRhWdmSaTg26y4VGUv7s=;
	h=To:Subject:From:Date:From;
	b=KzTXjIKPvY7OZsm+Rb9mGbZPHHuiIsR8ZbPKdN+hELsrwiTwskq88f4JEpP3No40D
	 7VvKwVDGBJBXWWoS2YZYubIe7/Wo+6y5ElBSDQUbiF1vB8XApCsSUo//KLsK5iixNC
	 HFKFuXMDZAu2qES+0GFAv23ZcAuhj6BbqcDtIQJ4vxgKYxGIfXvAlKzinJx6k+XTs7
	 fiIspboUbCk+Uk0BQVYdeSh2qKmA4DPJVIyi+vEeU41fHUKZkt4e6W28dqWE4rNxib
	 xHMLIqLUbvN9iejAq6vg1g6ditVCjUdQ+/SP38h0s+BsaVjtxajbw9mwkPCRE1yCPN
	 kHq+9blOtBiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A2F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294989358.25727.11634357069642787518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f31f5ce2e72b24310bebe20e074a4f470980ae19fdf59f315503b706825e950
Date: Sun, 08 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772949893
