Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449496FA8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717209263; cv=none; b=L58P4s8TytfsrsPHiug099nzy0gzDf05lef5ai/pvGAazhYCHsvxe6k39Yvodmcj5LNQzxc87ECrGF65T9QrGEAYFY8tZNaJh5CJWUfuskGK7PLlBU5D+CHLzxWsG4sg4kTBVAGSwv+eD3cjdtdEk7eR29usFJfHdsraLzh3Eeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717209263; c=relaxed/simple;
	bh=jq+39gC4mr39UW/2hN4MdivPtRUp2I5MkKb6hdakVfA=;
	h=To:Subject:From:Message-Id:Date; b=B/j21p3WBg7DPi4u7xkE3B/j374/7+q4KXcelGM7MZZP4+9lqfKSYCUEjrrWafB3CGDaHOG+pNg1QHtwVgXOKUA4dSe1jDxnLph1392pEKjiUTFHhNS9kToG7ILtp/mx7MrPtDRYc8DicANuXxSpFfPLe61WP0zr0QVoc58sjtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhbOOm+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhbOOm+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25DEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717209262;
	bh=jq+39gC4mr39UW/2hN4MdivPtRUp2I5MkKb6hdakVfA=;
	h=To:Subject:From:Date:From;
	b=HhbOOm+BhJ0y28DCIC8M7Tyg1gg/KRa6VGxuq8j3RPq3S1eHqgu/lHFPlWKXRCKmp
	 1Tx02iQbwKBSK7uJn1DvKHiDv46kyME1XKFqbCgyU3WRv8UmfXRvM5sXXVs6vugarj
	 I505VEnf+k04WHnBoGvQAt98d28OYUvnBoQ5/3EArdVm06PDivfCIueFYyxFVajTfh
	 bwxR8ZxcWehlmUTDvgUWlbj+ZoVVvzubNLQqsEkL0+rS5dnhPaiRqEHpk4bn+dcFAd
	 +yWS5BNNVfu2C3yXK9yrgQGCAg610ZqlRfEBqHX2Wu1FTce4/7GPdty+dt5jIa9vdr
	 3yXlk5lDlRXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24BAC25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720926278.17877.3623664434351022190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67e468fc038c19bd9dbd1f909c04531fbc787bd2885a12c1aa5872276198b2d
Date: Sat, 01 Jun 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717209262
