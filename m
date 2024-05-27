Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD2C15EFDE
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716819263; cv=none; b=khN9RNGnqq7o6QVSdQ3n0SHDTH4klf8EWMa2RsY3FKH8LqamW1tlFXRULXNVlHviSJt1B73aKBrWVO+qCugWLjwr3454TYCZnvn2QS0rMEn80p+lTJA3vviWGr/jlNhbC/Q70ZELYkqts76Go772IlxjZh8rDco5w2Z7eBj83y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716819263; c=relaxed/simple;
	bh=YIw5HX919K+9CZXn//mNNI2nc3xG1BefSTMURkBq12Y=;
	h=To:Subject:From:Message-Id:Date; b=MVepa9f9ge3FfmSA12bOQmKksi3s8TIcbIfq/2wyddePc3i6jE5IZcxqa8AzQiBY7aBTLpWES7UpRbOOsWJBLsLxCaodlc6g9mIUxDpx9zuqKQ8PAdD5EvyVAsPVVulXLg63id/rIj55H8ZQXj8L0vdrsC1DsvtO6d4cg/Lh01U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgpgmOry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgpgmOry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FC2C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716819262;
	bh=YIw5HX919K+9CZXn//mNNI2nc3xG1BefSTMURkBq12Y=;
	h=To:Subject:From:Date:From;
	b=rgpgmOryME0ESd7VkTg5m4yaXp5YLMdBgvJ71qtFjSBANeh5EySiXjfMYYUEzq3xJ
	 /GakYzHHcsM5b4KO4afzC4/7h2CT59gBjSdjesiJeqO/mGgF6rccSAi88jQxqQtYUo
	 yRkC4+5tyVzhxfocDoJxeYlYkRmEd2ioGtJ+yFXZX24nYakKGvK7P6IVvX7JtnoU5K
	 Y8zuLyaiViykjxl9mGDj7cX68Rhw98/sDAkAwGXnAJ6xufKoGosfGJDfUwGozqtmiG
	 U7/rkUmrQfDx50AbEYZYwaKFgxVlqThtrMcqHtIbenYkrXcfhdk7brq3bjc73XHI5L
	 Ppqum1isBUmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C741CC25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681926280.29589.17358069025544548228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe64f34b25231ba461e2d502e90c03b2a3fe1cfcd9fc5a58f86b23a3d4c8ecb
Date: Mon, 27 May 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716819262
