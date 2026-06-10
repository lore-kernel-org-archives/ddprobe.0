Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD5E331EC4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781055934; cv=none; b=HuYiB59tlf3gQm2oaJ1LAwCiT+tCmbFQ+4FlJbKenUBSKTo4w9leXctivZowZbU1jhWomwfJ+qdPL9S2kGIWiVn9FpYaGwzXvUGpedt0KQy7kbgswATkHMZJhym0EO1uU2E7Cf0N983wSp9em08BxJeBQ9rHYNUpb6Al7SqloFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781055934; c=relaxed/simple;
	bh=gm6+w1pSwBH9y+Xi14rS3ZzHsrQNVgW35KxH49hk96M=;
	h=To:Subject:From:Message-Id:Date; b=JqldyU6Ge2JL1e/kh9c/ToLHvzW7VAZZ1cdyoHj842wWWozYQ5MJl5psCIGTMvzRyRHIIC9WszGIsfP3/HXlxhW8NXPdSmRmfCgo6Me9mJfsgmCTHO1KqkLHDF/JZ2TBj9d6MTGj5akIA3CiTdgsXIzqEuVXOtthgMtpOWUgTdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8JjiJxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8JjiJxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54C3C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781055933;
	bh=gm6+w1pSwBH9y+Xi14rS3ZzHsrQNVgW35KxH49hk96M=;
	h=To:Subject:From:Date:From;
	b=J8JjiJxDEcBOv/CEc0/u2mS2PX0w05FU6sX78kq1/c0Ng3OOe321Nea12RJPEaIGj
	 dQimgcXCSOijUIpGtbpcD417mgivC+12iMzfHa5BkiSFWhqvqo3+0NC7W+71tH0Cqj
	 PqBXuJKYWX2rYIu+YbujRWfUpZR/HrdixftiEwcUS07OOhp90yzWqfLVNYXdFSexBA
	 mwpgjwJekdTZ8taKsN8DhhdLX2pwRwKObvihUIHX1VoOWNaXsmQ0bBeNaMPGxBP4AD
	 4uZVXB7vuaGRFux/gOfUHidqyVQmpwfRi5vgUEzvZHglDFOi0q9INrMAlm5vIbIRDu
	 NlKT7Aql2Z9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C4CD8CA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105593370.23610.17784199715937101130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e865f8c20968c12d5bdee16d437ca5cb8417d934001aa6fcaf074bda9b6619a
Date: Wed, 10 Jun 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781055933
