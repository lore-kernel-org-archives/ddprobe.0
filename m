Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3630A3BA238
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810694; cv=none; b=AdG8SFrrX8f+BCPmt4Gw0MJxD/1lork7+3QtVzMlg+C9lrUu08PIDKwywD7VnBvO/Yo6vlWWFsILVY0eTiU8cpDKVtajG07SGR+R6y1gr0H8KBsQfdtNv5T9b2B/boqufMl1hxb6+sLuQ9PP6CEBFZrFOnxUzl5jGkarS8U6mXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810694; c=relaxed/simple;
	bh=sVbQXZkkT8Dbioetg4lpkaspYs4Wu0uyBcNyTl7fDfQ=;
	h=To:Subject:From:Message-Id:Date; b=MmhqMK/k6ZsHeSiRFbTJ2kK8BEvC0BSGU/V9s9Apq2kkXByz5ovpGfv9Kox8cG1JnNDsMGdeUGAxsPVaJRmRc053CSPuefPpALM9lnYujnfrh6A0skHGZNRzMcnHanymfnyYav4eafmws/vaWdPkozap2XlQqPRaghAd8R8T+0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeZGEwH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeZGEwH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D385C2BC87
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772810693;
	bh=sVbQXZkkT8Dbioetg4lpkaspYs4Wu0uyBcNyTl7fDfQ=;
	h=To:Subject:From:Date:From;
	b=FeZGEwH4TWozV80ZlnML4v90/Ww9n1tyvACVkTxB5pfk43Z/pq28NDmMoh9g9bwNV
	 HRJ1CU5K9eHFYhXftBFJRukvh18lfEkYJYZFDZioGSwIZ+Kufqtbl1Sa85VK77ePXt
	 B6wkj6DhA1TGkEL3tIg8jeOml8vd+z9FPLRfZXXB077gzaOJVpu6yi867gcp+8LHZW
	 /Za0KsLRMhe/pPQw1MBSy39+d74weWgtFb/z/yipv8G7KvKdZzJZDLK03HQkMws6vS
	 XLz/XD/E/JtsfS6fQpyoyiuuutXBZAtXyKlHHCrsCfBa334/0rwKxjWBeFJ808/Ejc
	 91jEyDU3vqL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE5FCB615
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281069357.7128.7093524601535844996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f0d61ffb6ed3ffbf6fa527e7212ccdb772155b540e4295b5cb60bd4e58c26d
Date: Fri, 06 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772810693
