Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAAA1754B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721661354; cv=none; b=qEbN0/QIAKZLc63VopLMyEIoLf/Z/qjUzGmy0qu1bjAdRPYSvgp/ISvNJWuh7c+eA16aCmA/Ba96YrOHZ5cNVVz7Z0gy+3hM7cY9/zXTl27Fk2EDp+/x3UTr5WLuy+scm0JuFcDmQKsit9JKdcQuwHMETnB6RZGUDdCNOS9T7QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721661354; c=relaxed/simple;
	bh=5XO2GCJDCWwVFyS2QS6hcEKFkGPHSOMjNJZhenoPLm8=;
	h=To:Subject:From:Message-Id:Date; b=gJC2cHZiL5qZT66XzLF37gymyUrJaHeXjxtfab5Y8ydazjj48M9S8ZcLeXQUXdZr/uiCP/X018tYHJ+/bTbE1RFLwaVY11B0e/YmjlHRCUogzhylNi3rQVH3wqUoZkzt9EfR3P//l4WEcnr/HQbyKUciu3aYCAB11tRfa6i/71w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uor7/6MP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uor7/6MP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC4C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721661353;
	bh=5XO2GCJDCWwVFyS2QS6hcEKFkGPHSOMjNJZhenoPLm8=;
	h=To:Subject:From:Date:From;
	b=Uor7/6MPzbYDFnXfqOg9DLjbUs6C3yX8sujvQGOL7wE3zsrIH8iaE6r9oM4FQ6Ybf
	 6xCPLo47FtTNOUscszP8k2JxDoWjF74XvfgnqJSPbL3glSYPwsqGELBCqUFMjgdqIx
	 802tfIPSjJadOx96Bu+Soml7k6zlxu5YOUiFZu/uWuKM2Cmgnh125LCooCZ64/PiYH
	 InFiA12G7Cm0U/1x0i+hcRkwlpmdePhIeZFTO+PLFkKtXw1L7F3dw0OWkWMugxR/ql
	 H042Spc2mZ0cOmR5qboy+5IqBqApE9e8y2zvPscU2IXtEALrf/jqktEPpAfJvnXi/e
	 d9gIn8Nw5f9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97101C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166135360.5913.15974873737562554436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70701e26386af9a5adfee80166a9d1fd239baff307846bbec571eebe200f862a
Date: Mon, 22 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721661353
