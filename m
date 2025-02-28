Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DE120296C
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740773934; cv=none; b=NCeqNNTsQm6WTm5JacvM0vyoezTkcJwQesQPO3qWvkkyQdS1ggSqOZamiCW4Vuzw0+ZZwCCceeWIpCkRv9m/yYlI0qcJ4SbXvtcZ5lNZSPGUw08cdQzEjhqjVxZRe0qp1hSUDXQuMRhI+xfgggFFhMnGi44c6024DUr0Mar+lHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740773934; c=relaxed/simple;
	bh=nhhOs6pepGF3iXFTZ7URq2BcENGT+OYR4xxUPocVoCc=;
	h=To:Subject:From:Message-Id:Date; b=k9JHE1uftZxNfQ5ygbWZA9uPuLq3+6CV7rjlJqChctjWYXzjoh/8EOFCoPBp3yKSiJINAjli5vrwyNGEaRv86JfVtdN4tGriLCkUkPzll/xhSHODZ7vkRUUIp3Ms0eSdSG807M73TRX3pbqoKlFJp3ev3k5jeOnea0clHk7Ak2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBbiBSpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBbiBSpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BC5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773933;
	bh=nhhOs6pepGF3iXFTZ7URq2BcENGT+OYR4xxUPocVoCc=;
	h=To:Subject:From:Date:From;
	b=qBbiBSpq9d5laV9c5dqqibLNahdcDLLCFQ/OmsbgGVTUXYhloCXn/fY3DpKIs4bBU
	 6ojwK6rZNeNGCyFWY4xG9me7JLyLORFEABVa1mwKQwJPzbKYP7KXCvs2IniLbIOnui
	 onpPEdixW3QAr8GkEoF7p22kWMc6+C08Iax7oAUSe/HMLNhhLFqkHj0S+TWxEdS419
	 LKiPYC+oJLVsJueMmTiT3BOuoZe436YHd9VcrsdwrUPteYdip49RCBOOWGhvk9zLz4
	 zdX2sQi+msJOSd3CqJLWpNn8Whjz1jm14sAybI9dFR693cFte5rycai4klokw6cKmN
	 dZMM6o2arLkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C71C282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077393367.30830.2917593161431206304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965e04d25bd00c38d50a04d8402621c63a420b4849520dcead4913c61d318f5b
Date: Fri, 28 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740773933
