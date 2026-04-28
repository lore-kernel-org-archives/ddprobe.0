Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB942857CC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777366654; cv=none; b=oPQIrYJRkQjaFIfQcWMJhYoGggwvH8v2IwiUX+joF25aSTXD5xN4WfObLVtjIEpBaY5Uiz4baH5m+I6ACF6FGOi05uk+vClDZtwW+JhRGa2syi8IcK9tNXOn7j8IkBXwrdwNWPx1vrtKGNz+wVudtzZZIBgdEgU6mYAKXzacjXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777366654; c=relaxed/simple;
	bh=QlwuP0wGLOw9eSvEMhCVnj3uSYPHbAlEehbbGICXpAA=;
	h=To:Subject:From:Message-Id:Date; b=jb1JtRn3iLVQg61s2CiYcuRvDRXIWjY5qFPc3jQYlgJKBemuGxKynwoLorVxjIVhOa7zH1qDvChCZrR+LU1ro0kNmGX60NJc7hT1KKMwsB9WFiVokBYP8vnHQ0HFF//tzKk9v7yKAUvQ2qaXKuzljt0B/uvkpeLriPOXMk+23jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD6SChB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD6SChB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE8C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777366653;
	bh=QlwuP0wGLOw9eSvEMhCVnj3uSYPHbAlEehbbGICXpAA=;
	h=To:Subject:From:Date:From;
	b=LD6SChB+gPKeWnIun//v7tTMh9hjxdyh2gSuNJGYJrj6fO/1V+FvZxLQt/TTzViET
	 H7mrsjUBHjNCOGO8/CzjZx4rpVredpdjDrT8oI/oxeaiAVLaC+8lAi5T8Mi0OrHeel
	 RNhM0kBYeqzNQGLMw+aTxpkNNpY37nOFpzpAKsfL/5iEwwzFdXTYnqKK7/qFFN57nS
	 NdLi2/BFvnC5vErckw4UNDgdSWTOcVovkdLMN/ZSl63yQPxEpizGEMYBAY25N1Pw3E
	 nZqFltWPpVTY2EYFEtyOoytWPJOOj9ZLFUDXb5bAfIJjVTJVeuPhnnn3iA4c4QOBq/
	 MkjfPkO+TaLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDDCFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736665375.27359.16162281407890481577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a9cd8859df887c2dceb91afc418bc6d4b10d8747883b1a9801be7479094042
Date: Tue, 28 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777366653
