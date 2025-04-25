Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373294C6E
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745551795; cv=none; b=sTsgPlTLWztnCFPF14KN1smmO6lPvgSbmEFUnwffajjtwBtbxeJr2qAXmEdCP+d49W/hGBxWdE0AX6PAKxv2oizMxYAwPkKgFzkABLJGhllFoER79hUaGTH3mm7G1mGhKNpgB8B8hcVPyIKCjw0wQ6pOSlXC0FdjruJBuYFV4qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745551795; c=relaxed/simple;
	bh=X0NRzPtjxMdK9SHOl2UT7fWGEN3Xm9M2xKb+qo7Dmso=;
	h=To:Subject:From:Message-Id:Date; b=L0A/YHRxmgDh4E+Tp01oQ4vomenLUrG1mgNOvGKONNpQ4fwdpOqy4lhqcRT8NZmrCg1CuRpr2GFrP08kbLGUXBnCvHAAPVBRTBmpO5f2WQViBLKOF4SL4W8AYixsSCNqfN9iubcYiIt+TYQiLTv51TWo2DmWBhY6wF2py+NW8o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO0PWFPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO0PWFPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA79DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745551793;
	bh=X0NRzPtjxMdK9SHOl2UT7fWGEN3Xm9M2xKb+qo7Dmso=;
	h=To:Subject:From:Date:From;
	b=JO0PWFPStbNz6uvJb21KDDWiX8I97XZgTO6uWsSh+cBGkPLpFQB8gddLZ9f23bzU5
	 9D+NYBeYEYTxkBC6wc3JJzC+d5oozSkw0YAuzUXCn60mSDKjp5Mpyql/wSEDJgqrpu
	 V4RSTkOZGdenJeZ4AP3Eg7eV4Df8Jm4sO4pgEOGFNUJviLmv9DxKtE7hbvNGf4zVOt
	 Iuwx4LM0iQYgCJ6n7DBZ4yakhqi7yPQj3qvSO6ZUBQjX04j4xV7jT6vvI+24f4CzPH
	 Hu97PCxA3jk39sqKl4COkuExKg3DLX1f/UWXI81/RrCIx7bsGtwyXn/5qMLID0/dkn
	 8DfwCDJDj/zmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95782C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555179357.5720.5860049127230846588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1517ae032184dc5ada9e2600a6c7df9768ab73cc42921d2612f8f68d0138ddf5
Date: Fri, 25 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745551793
