Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B34E156887
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728144354; cv=none; b=C5N407AZImWHN3JKB5NvRThSRRGmk9c87+j8ZFIKf1sCSKXk4kvDVPi5ov1m/l4kj49orJbFxP+vsQAn0Xf7Xhj1T7RDd/F1MOAvBpcHAKRtF8CPYFww06aJmWdF6LmYKbVzkKryD5Tmfrls5zbZmbC6Z4Db2I6ECtkBzoGWFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728144354; c=relaxed/simple;
	bh=wRxLGWOrh7n/z66zynW/9Dj6Co+kODrtUPMxRmOpFP4=;
	h=To:Subject:From:Message-Id:Date; b=uQVh2hHdt80JPBoExCyyv1TCbWFmEcC+CJKMm7qTjfQVglmZPARM4AyffR8N9uMIaVM9G/H24VZVw3Wx9cJNG78ffrtZ8erq/kD1ehsJ6reMyupP5WMYJjw9+f9YKC4/vs83q2CkuPTEAFG6CylTK+pa3B5q/FhKXVB4Q6QQcGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eV6ORDZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eV6ORDZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE7DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728144353;
	bh=wRxLGWOrh7n/z66zynW/9Dj6Co+kODrtUPMxRmOpFP4=;
	h=To:Subject:From:Date:From;
	b=eV6ORDZsC8Re8CXDNt/A0uiTqFpY4x1P8+JoHfXLivxZdwPW1zTTgnrSH+/Z1gm4f
	 V9yAgm6+GjfpVB/AAUsTz4TBCzVzvwiqPrB+2n8ob3vOytATj5BkKN6OiMlK2hTux2
	 5fED5s7G8SutR0KPCW7F1YtzRY4fP8bZs7haTAN1OCx2xXfwZvdQK2Ok+m2On+6b5u
	 Gl2gSrnHT1L/xwhu3nRSeDqgmrjKZqsAHGdB1gIAn62CYr/NuA/GQOQ2VCnCQ4Xffu
	 znrGxJZ4SGwGh2645SzRr0f2v0wHfBN7bN4l4SXeHUq9QvmIEqGOQpZdIaF/KZ6OsM
	 Bb2hHD7PPvUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEB6CF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814435363.17359.14089191348477659577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2947f2bdd94deedb5ea4e05e46bf21e2f06fd42332749e738085d3d09c70780f
Date: Sat, 05 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728144353
