Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1B57484
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719470063; cv=none; b=GzIGxmb01s7WE1NjULD/Rj1QOKPt7c6l5EtE3h+R9bqL2K1mBfJAotpcYOSjUe6EZe5z32QJDsKE+QyO7OFpwhzdAxmaaKZiIHxg8+uxkk8UXTQku4E2/QrnSwp17UZ0ViknnmD/O+XjZ/Y9ELUoWxzA9DrdxaTncxjobHMxeeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719470063; c=relaxed/simple;
	bh=8zhcWEbkKiYsNj2jW0HyLt+ILhdwsT3rrVm5wuKq3vU=;
	h=To:Subject:From:Message-Id:Date; b=opd5xhaupS3w8QcEudXG61LJSxEyGQ5UcOoJkubAAAVByQdCnyd6Jd5INju2j6hWdGxjMBlaCVBZL/FUrD/VAS+aYIrZbOLMerDC1+j6omfpESteWfmGz7klIGGfO7kY2ZdOLhLOF3TcfN9YhExICQKG5kI8yLzCJ4T/HtnoMJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1pK1/2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1pK1/2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CF7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719470062;
	bh=8zhcWEbkKiYsNj2jW0HyLt+ILhdwsT3rrVm5wuKq3vU=;
	h=To:Subject:From:Date:From;
	b=o1pK1/2nNY11TnQBoH7tzrhMHuEDsQBbMKh77b0g3T42f+Yf0g2ejBAHHT+c7xXa9
	 F1pizOFeqR7rjeSt1WiSj+WASNIRAEzNSJ+f621PhBeklQqSEie8W8EZoLfcDmtPCP
	 3u7go3TMg3iWbiq8Cv7tcYXFV8zun1VV0l6zzWI/Hn313QnvUqzwWOIcW1SajQ0OLs
	 NmT7bmQPnlgtjj4etvlbXFuYbobWx1CDWeZmT4rqPbsfiKonvMzLw3A2uOuVyS87FB
	 Uk4gvuxkJA4EItR8U/WaEXi/Vjm9ZCRNuJTiNseN59mmfG2iNmcHGoDIdpk0+we7mp
	 PghCjWbpcCpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8065C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947006286.17263.2223916430107294876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23aa31d053fb9de3fdb599e5d4054abbbb7584167a2d59af9df3aa79320d393
Date: Thu, 27 Jun 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719470062
