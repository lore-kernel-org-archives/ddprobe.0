Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBA91624E5
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742966994; cv=none; b=hTn0oZtkYoOTsQbajQg7WpJknQq6L9cMyuBGEC3u6vHLH/NSYkVfokw2dd1yYQ7SkSGeXIXKuecIV1QUzrFSDSMw+/1P06hvA2FL2V1I06j4qtA0OyWYnBT79DlL8DbiCGms2nyWvyJlDD1A7NlrFctsXilQSWGSezlQlKMfo0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742966994; c=relaxed/simple;
	bh=mYiiDZKMHMTiXTe98GmJ6M7UtNXtk6R8fa9qpXW4shc=;
	h=To:Subject:From:Message-Id:Date; b=Ie9HzPXDA95rwr+sSFeHqGDkZiTrP/sOkvBnbsAa3cYzElEPpOcf2ZQKACQGqISNvtAH/k5tAZsvovnDm81YCvqhP+85zKePZ2juTs8Y15m7nOZP9NEZ7En3Y9q3Ht796iBep/WTGjwJiF7m9fQrm4f8v5nie8CGxlrwnciFyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBaTSJvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBaTSJvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4F2C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742966993;
	bh=mYiiDZKMHMTiXTe98GmJ6M7UtNXtk6R8fa9qpXW4shc=;
	h=To:Subject:From:Date:From;
	b=NBaTSJvMJwATByKtzKa33PrfoF0sdZr4gReRQEl1c5tLBAcqee7pYDJvlMeEZulE5
	 nG/hNBAjKgeFZlLuO6WNH6PF7EyIFjKWJuzpkB01UdcAp/NqDjpD0Tso0eQfsp97nC
	 JSvhMT4/sIlgusA8+22Y47Y6tWfYcM7MNuC5ReUAZ5XPtVtFimvzSFXSez5t/jInKi
	 C4LpS00CSfDuoedr1ooTj4zfJd5dvd3SUr6VZ6P5JaILkEKIbZUr0JF7f7RGkwiqzW
	 F1MpsyVJyrOK+zAMVLEdLdJ9hXsYq9sLTMtHUfuiePA7gVhSwWc/Z8ZL2xgqqt13E1
	 J/d/FleD8EKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DFC28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296699359.3059.4925518594230585528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382c1d7e47f108db7d81664a9c9b259eda5458277afe9806ec5a3b59352ad11b
Date: Wed, 26 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742966993
