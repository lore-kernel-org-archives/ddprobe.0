Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087942773C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764321774; cv=none; b=MAePdobAsnYXOGt6/ou9ShwxOhM2yrFeKfUBHNzXa/Sa+gFIa4s6KIY/qIIprOCgYtgF/Z2PiJSKP1zaLkcB33Y17lRyJAt6zrPT/CruTuN7CzDfEzU7CQND+XNItP0VyEdh6faaYdLZFHjOZ78VIPDIAoaa12FckF/yg9ViWsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764321774; c=relaxed/simple;
	bh=ZYRg9N43WebrExTeNTD3AHVgbZgNtBJCCSZ+gml939c=;
	h=To:Subject:From:Message-Id:Date; b=JRQM/1fWXsEDCjpZWXLVZpyyu/WFMNKbdsdiCy1GNnRfiwps7/ONiLm4CjZHuKLaL2giOYoq65+uOu97NAB1JKTN4GHqmeLk1m07CGvKpIdFn96wn2tJwz5xXbvDgA8Ahky3PF0dgE48Rnfdj5r13U1CSKppu7OI9L0S3aoebYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWfHjgeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWfHjgeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764321773;
	bh=ZYRg9N43WebrExTeNTD3AHVgbZgNtBJCCSZ+gml939c=;
	h=To:Subject:From:Date:From;
	b=XWfHjgeTPCMYdeAnu+b4TJDFQnf07J0VCDFAsJ2qMIiWrIq5qGoGh+4A/c82+efSw
	 q3/IybwKLTPK1F7JhTbfdav2YHjmy5mjj2FVpr4sSRlrv0xc64dTjGgSbFe2XDXf4i
	 G9VlfldxcFRKhTNHSLmxqszQdWGNm4NMH6db78mzHpFhPrZFkx4jgTZum6XPEXm56u
	 uCDGDrDD/UxUvGdco3MGi2BUFkKy9QM/g6YZMrNoWHhABMUcDOhekXBcbjCs+3Cvbh
	 ez1WNp6xl/mtMxEGDawnntSOfDq/toCZjU3TpdNcfqm9XEX+dlLlOZkzTmV/4TnOaj
	 2TmOnGSfef3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184BD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432177358.9164.17908259648838054842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc656389eb3ad7b32fea514ce2ca406e939bc128910fd84a67feb33f38d8721
Date: Fri, 28 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764321773
