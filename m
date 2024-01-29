Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA82767723
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706536696; cv=none; b=QuGbU3ZnmVjvvF8ntG0eUZufp25x26yBYoPJTtF9AHc8xw0jZwd0uAc3OKp3omD2t01e1lSqzAuLGMn8jK8IRbW9GFGXMkpnhuEK6+dmbZf6qAgox6zBc5/zz6CODCLddSoCKFpnAGO5xaohN19VrgUF9ZQ213XR3qCYjMPOb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706536696; c=relaxed/simple;
	bh=bnimwCKN4Yj4s3sUFaP0kLkv83oXk1ElsytRV43r23U=;
	h=To:Subject:From:Message-Id:Date; b=KqJ9LN6Fu6v9q5Vnw03KKa/nxedier4YJm4Jgo2/vdirCYiDfAsXJ63GwcMUjofqZ6vmWPr7+b/ScAhabx8Y//xw2gdxW4gbfb3FzY3QUrMDP0SBmGD1NVbJUcM4yw3XlRALy69CgXRgjjyyxHtv2NY2HVjb+JhvUZ27iEoWN1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o34r+whC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o34r+whC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA0CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706536696;
	bh=bnimwCKN4Yj4s3sUFaP0kLkv83oXk1ElsytRV43r23U=;
	h=To:Subject:From:Date:From;
	b=o34r+whCnPxi18wUCnPN4yGaoMe10PxzUY2+TgzWJ+77xyKO9v6/SvICtlRR9BWZV
	 muqkzxAlsF4eIc0R1Ru2xhJ0fGEd0YlLOmw/ZIGzm/+Wg/eAQyZISwidPbtsmz6Jz9
	 U/W6o/l5cJ0BccNZ1pfxKgchCHJf/vfyENE+8Hag/OQaqTh0tdSQep0db/8Z3ASVh7
	 TpYyBExvILt+NPndELKxDfz8ayGXDu4CBLO/1KMDM8SkkK808sZUSVjhqtG1Eo3SFZ
	 WXbcAM9wy/0uyXB/DJBxm9b2YOP9nr9gNLcwtW9D8CWPHxDMlGOBBHwGE90RwuJopj
	 mD/CklTIJnLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6086AC47DB3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170653669638.6160.8360672549513278084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0021794a611143bf62d06d8b8b591769c9824f3860eb7942f55cfdc64345958
Date: Mon, 29 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706536696
