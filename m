Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34FE3246E8
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864794; cv=none; b=lnPDVQFe+i+ThDUaklYruWZrJc+6T8GPUBtA2FO7dZ+vFfZVQK3fWCRnoMerpBrio1ZUZxriK2w/kN0yE/QPJk5GSTuqo0tIg6ofx6MT+YW/lb1vfS61ZYmtQu90+svt/LY5YaQAc9KQzBy048vWC6+1e3vKrDJ1/gBwcbPuCHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864794; c=relaxed/simple;
	bh=s3n/tzfA+DgIvcyh1h4kqjZHH2BeKO0UY436En3/uss=;
	h=To:Subject:From:Message-Id:Date; b=lkw3ELuvzDjr3HjJVKT8K9U88plraBRS79jPSpgN9pTb7t+F6IgKQT8ag3XW2FsdNvjdD2/28r6HbCkRBQm2a08Yk1X1UmOTZR2uTsYJfPO7jIAJLjw/kNVqbPDIwfAGbeX92Tdm08O2bopob8IdJwJK+RpXeDyzWGmQPyPZWJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy0OuZxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy0OuZxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A499C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762864793;
	bh=s3n/tzfA+DgIvcyh1h4kqjZHH2BeKO0UY436En3/uss=;
	h=To:Subject:From:Date:From;
	b=gy0OuZxCrrLxBlY9EEPVl6K9JkJyOK4tsVjzketxsH+CtW+kta+GFrdMjZtNThOJH
	 Rm9LIraVx1LGwVk/7DRbeIujgvWpz5IGDMah8VAp3kdJaAmIpuRjAUZUf7trJRN/h/
	 zD+PlNuGMx9tjyPBmzYINbwmL89wQINNk9hBVHZe1MjeINKAskPAYoSpRWsvx+zJU9
	 MFYzgUuMPsLU+cOmBliESz11rQ0gWdxmHa/A8bnYQdmkKgUop57zE2ENlftUQpcPvV
	 QNVJD4+CZt6SEojbkscm6yZV89/uXIldjVPB+X3ew/NWtcEmN0l6evhw9CrZ5FLzl5
	 U5I3IluhhAexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F433CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286479357.25781.14490210327247458896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3610d8a2bd476c967bff798007cecf861df02cd57dc3b9f8e45410ae6150aec
Date: Tue, 11 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762864793
