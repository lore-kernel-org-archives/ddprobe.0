Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E4E7FBAC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773024894; cv=none; b=GheGnULx9H5Q/+nF5GMUkd1pxmqhM7nhPDdUyUKRhj8sdkfgiLT8wMpvfInxym3jMHhzmV93JIZ4aa9NT0zrFK/Ci847ThK9yDrBNMnPJZUXvQi2FTlKsbVqtexes0+5YpF9qBdFr6zBeVUIAJEtRj05j25BhVcVkh0dtD43Sxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773024894; c=relaxed/simple;
	bh=tLJakOBBz8IbcPtCK1iP2wWofjPuuc1IIY3iRXFPcrE=;
	h=To:Subject:From:Message-Id:Date; b=lfvpzliSteGAQmNq3aNg9gpaFcW0NEDpDs3a17FWqbRHD0ttyn9RJhpsi/HAn4Q4PMSZf359Iwq/R/WZE8QVr2GSTyAGwvxDDSRjKPoEq6DDXeoLjinHCpgAKvpQTgN+iutVvlXjSL/CWYru+Re4kOaHtlvJyautVP9A85L+uJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+52Dftq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+52Dftq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D6C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773024893;
	bh=tLJakOBBz8IbcPtCK1iP2wWofjPuuc1IIY3iRXFPcrE=;
	h=To:Subject:From:Date:From;
	b=O+52DftqOHW0g3u0obhFEc9cFmQ1qUrrXWoWmW4DvP3B3gbmuRxhdpbgURo2ucfHL
	 BIy9DGLYn4vw5OgrRWX/cxZf1iIJWIUiE+WuvZ8FAvZX4tc1qBe9Ssg+ge89mgY7Hr
	 YCo+jTs9a+H9ciGEUbirhHHM6GeaeyqI2gSRn8hamhiiCpcBDKjuZMfEOrlJB6ymIV
	 BtRLtkiPYlp3mh5OBfnfJC+89rq+pUW9iKO31qh79nvbB1OYkiimBoWNiFcfPcpXox
	 NPb5SfvXUeVCJ+tvZ3Kj5Z/3/CNfcDCbVa7iPtMa24zSNUdjWGjfzo3s4L67Kb93YA
	 /H8Kzt6HJixKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93416EA854C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302489358.7852.14159123213277080016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddf694d0aeb636ecc893dd6febab0d263f710a72858240a4369f6a12541fcd1
Date: Mon, 09 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773024893
