Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E6926ED48
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765043574; cv=none; b=lKYX5SeN9rESxjMk/QkSgOYDe23JtRn8Q/I/lLcv5YT8gnDBHG4v5Q2fnOuxUU/S/oQ08dcrl9ryutn/pukhSsRDd658fEL+69ET570SyHMkoH6GL+xGeFxmgqZLlBELZznSF+wGDUDo7DwKq+r853Mjbv6jxs9x/BQLYPReMSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765043574; c=relaxed/simple;
	bh=77H+awk/JzLILfOLGfwJ0w0q7zc/MQ54JUXSd2Qnutw=;
	h=To:Subject:From:Message-Id:Date; b=QhKTvrV7/1VTF4AYTUSXXn8fuH+69t+d3p6wtW/X9EPif3gyl6rKq042Q77gTFP28sOvFL8j7OwLiXBQzo+KiMoiUgH9ctv4p8D8eeikxRg4W76dxfZFbyy97dpVdx3fegkPZ5X1OmuPjRZhP5V1X3mExE+xCv88TJGcH/rOpt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udIpGr2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udIpGr2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EACC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765043573;
	bh=77H+awk/JzLILfOLGfwJ0w0q7zc/MQ54JUXSd2Qnutw=;
	h=To:Subject:From:Date:From;
	b=udIpGr2JEDIZe4cc9/y99Fsukq33vFuzzW8I+PgeaRqkXvfBCc5arUkeJkly/l0If
	 tdNx0VT7o1SVIHiJXMPQVzl7ePfXnqc41v5Sc/0ZMSZ6N5l9mOl0lwB0PQUPP1xChA
	 nM/tZx2NpyZy6H6Mrqsov4JEmxJTA61LhCmS1F0vwfVcQqHHWUrukTrumxAWXyAR07
	 jTyORr1HTaCCGZ7rzQHLErG65bsvY7QevLRB9lJOTU42aVHts5X7bTwy1GZMW/Rhk5
	 5NrurCMS4Vyu3HxLS9A4QUR9Fl03ZZCw8YTcQ8O6XBOmZK4NzDlUrCEN5ePS9/K0hI
	 3m+Xh3kFslECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988FCD339BC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504357358.30123.5801756729533317746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e950886d0387fc12b49c84c2465ebe937284bbe02304fac47b95dcd91838f873
Date: Sat, 06 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765043573
