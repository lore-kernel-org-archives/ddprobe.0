Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B23E49CC
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785958834; cv=none; b=NcPomoOKFpxPoVtTuqmhZkkdKirSMsGPW2+fXgyWHeW+7Yy3ciCwYaIXhdyBY0fCE8SOfcrFfeO/LQkCGe/X3JHmww5qwYbeJgLoAe0keDilGyWecm2nQ4jPzW7o+rrInBqTiJaNxKcE1CneYzcTDpMNz4waGFbxJUFWDyGphng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785958834; c=relaxed/simple;
	bh=UuD5Ak5DZdM1mmLINanF551PDgOOPojF6T2XlvZIgyk=;
	h=To:Subject:From:Message-Id:Date; b=DCNGlgJzp5iv9Kpg2MvwDAxTGno27Sco21LbKhCrOGmYtdqnCQpkfrqkOszmuvZnAOzM+sXQ/gWPJf0WVMfmICeFYW/Tp+4QGgYd9etdU5DzHkcSJD9c46BjpKMURXLVNOS6DTYW7z7Pvdrx7AAL0hG3pRfF0GT3hBKBFOM5Bu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXHONNJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXHONNJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC93CC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785958833;
	bh=UuD5Ak5DZdM1mmLINanF551PDgOOPojF6T2XlvZIgyk=;
	h=To:Subject:From:Date:From;
	b=KXHONNJutCOoj/2pZohcV43D8t7g0hQOPoJYXitX5DH04EEzaFEKamk9YgIm0+cZf
	 nArNkSFgazBJNCcF5kolPXkXyA5X83RaU5An68sdfM8HtzmR44pydUvfWE5ao20yFy
	 0J8fI4aRb0ux51B3jbQe4z6yJfXiNfH/fSBguw7GOEVUb1Ti3G8dnx8yIBq9ZYQ1YN
	 6OsQebmP92CpPj2eDx9aAfBHOCYhWfP9o4Yd+FvaR9FOLG2bGRjcRArlurN0nWPkew
	 K7ODyyrgJFo/OyKDLKSd5J4ab9y8mRuB0dF8hAMokOB4EebZ9g+Jqhzs1jT1fJzvkb
	 zVgbL7JY0cmFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C54C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595883368.12917.12743947097644327652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dee0122cc568599954d5110ac5de9fe67816ef9ee52af14913b3d81256caf4
Date: Wed, 05 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785958833
