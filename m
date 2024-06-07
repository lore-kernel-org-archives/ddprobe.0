Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF5D19D8B5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717800443; cv=none; b=tLm848lOpOh2rF9DNXELKG77Au59wXsZJzTBXy+0CvHVE3NaDUb/wDzUKus86TzLd2gkeKlYiiQA2HLdlF6gmTdMvn+35abOe+zzUbgsmUrw0p8lFUzJjrgoItED+7aM+n5QdHJ2ndbZ71KZ4SmAj6fD8OxQtuTbl63uhj3Imoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717800443; c=relaxed/simple;
	bh=jQ4z/+ZLuerXW6W2RHubU6mfQ1BW374GeOZ+W1eRvSI=;
	h=To:Subject:From:Message-Id:Date; b=uQttLbP2PsmkwBg9tSCwdcJVbwABKqcTmSq5CQ3invPYyqOwZOUpWla3+w+WITk3eXZlEhr+T/pxxjnIHGCHOsbNIUZ6mWlXKKXQiCkHZ+CEZwYIE7vpTvusY+pAFtVt9cWRScwBYh1IJea6hsEWpKqUdgpoLvH09KJEqXvrqwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn1gxWnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn1gxWnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A76C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717800442;
	bh=jQ4z/+ZLuerXW6W2RHubU6mfQ1BW374GeOZ+W1eRvSI=;
	h=To:Subject:From:Date:From;
	b=Jn1gxWnJBbeyxjvbjPn5SbbTKpS2y+JhsomYIeNKZb1oa1dimYPYhqiyG4iJWURtQ
	 WCjXpmT6ph0eFHaXrudEAOcRmK2z5KuIfjzoygX1CiblCggzQFkepgnea3zfW9udLf
	 sNRbcDjAQLCdqrjC6AR/EGLGdXY7Ehy1uHNaOQjPbgigw4Dpm0IDAHVz1wIgP+wEd5
	 ALgWmeyXBk4lOg6XHXre+SLM64SBW0z5EK589vL2Pge6WqUW9Lc2xH1VzWJEnT38qw
	 SBFXxHDgI+2+LWeIeVfESxb+ysvXlwszQNP6eg1ER8Zg4A4qGSs5nKAy7sKxyByIEZ
	 WT0kcg4Tt8JLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD91C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780044282.13712.15560507932379391747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e1348ba8b708c11df30ac3edc0d1acda85a6da0c6900070984da738ad45c47
Date: Fri, 07 Jun 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717800442
