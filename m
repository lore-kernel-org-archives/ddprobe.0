Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3191C579C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726422954; cv=none; b=QyBJke/8KmxoNW48injHOuMjSrNPix/uTJWF4XfBEuCr0OEdtW6ym0u3mCZ2p4ctYaCPSiko8w8qoFbeHYfaOOKs3/av1cRGz7G6pdEsVk7XMNfKPw7rCpqJ2f3TpCGfkeQpQZeUG/VClrrNJDSfCJhI9Kra8yffuTSKeymJAO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726422954; c=relaxed/simple;
	bh=sSRt1fZAI1xF4Ks5VWy2/3JUXKCglAmgu6JQgKamErQ=;
	h=To:Subject:From:Message-Id:Date; b=haXhLQQ1+Lewg58PJW6jDgj0ZQw2uyB45wCmEc2lUvfk+fZkPDvi7ETS+/vRMRh3d4Z0jjUt7tcVuOLWWAWU2zoy3f81VhIgycBQa2UsMuWhSgYmfdt4VW84dFGsslo9sgiaC4DqcZDIh/AjL1/XdYNRGfBxpfIecIeDKqqJ9d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc9SGzAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc9SGzAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF50C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726422953;
	bh=sSRt1fZAI1xF4Ks5VWy2/3JUXKCglAmgu6JQgKamErQ=;
	h=To:Subject:From:Date:From;
	b=Rc9SGzAnEpYMIce8YWVejY69N5sKpuPZe8YvWjAgM+2hqKBvTvjcB9EX7ZpS4LImB
	 S7/jQx9ISfLaiVx9kPZlLMlA/RH067mrfX1v6QvOpgIuVaVmRgmpvhR6o98A2wJSAj
	 Dkv5qjyZImbB9s/yLSInexysc8fMd/awqikJiYufeG7B/us4CWUsb7R1AUxjLdjF1J
	 NcSKh8NjcFBRJ57m21co5UW3kacB9kfn+1iID5oM5peP0yb9GgRxTT3EkSt08VrgtX
	 ln/r7LydErUMwhwBAJjp54Jgu/BWy32dtJGrAyHtDRvDWyGXR49h7RBbY10VwqwGvN
	 r5qkfXEoP/jCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9948DC3ABA2
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642295359.28265.12787324643596356717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ced67429d5af6ced0049a76b2fa11ef2a4ed24a1b5ac954be4d7a9c7912dbee
Date: Sun, 15 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726422953
