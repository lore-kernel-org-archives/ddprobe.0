Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C9E274FEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771712094; cv=none; b=iAakV9H37/C5TTvwB3WDWYy4u35JvOdGrzaA8J44w4QJ5BMxyThzvkvuZW+mt9SpqhQtkOGkXm6tkCN5xAmBtdH0PN5fsnXizTRrVzTkkxXghF8cn4PGPmmsTsyRKc6pnq3Gl1+vmVPG3BTkGnCFD+ieLxXYcXz49Tf/Nhstnr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771712094; c=relaxed/simple;
	bh=bKLR+9+BjJNiqcEkB6FS1RtAwnnlUVo6xBHBlFrW87U=;
	h=To:Subject:From:Message-Id:Date; b=q5EPjh0TKgcvch6tyyY4VbQCjWm85o+Ut35NkfZ//Y0kbQsVsjjcmj+7F+73duZaXyspMF8JodJoFV2WS5GEQCsL1DHbe+B1HGw9e4HGux3zd8gt5onCGSailQHCsy1crHF1FZKYxpOTYOBjc5C9HrDUDJH4ZNoVne5vzYVUr8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL7WpQTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL7WpQTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771712093;
	bh=bKLR+9+BjJNiqcEkB6FS1RtAwnnlUVo6xBHBlFrW87U=;
	h=To:Subject:From:Date:From;
	b=JL7WpQTatf5SPt3KO7q+TbslTqczkbnVq2AzNB+JtmPTuNUAhXZV9GMbIFR44HF88
	 JlUEJ0BTu23j8RjrBarsQYrNlKJRAhwSSln+uERfoGenv6c4ofRkJre1+acSpUHfXw
	 kkWLKMQN+1WD0j3NRF2/fESGbXXeIZnDtj3NkqN99IOQtJK6YjxLs0U/uJawvu7fsA
	 rN3y+ytueluRe9ehANpjGRyneXx+J3xIS/NzsNmMFlx6jV6woZOx7Atla0ENvg1YyL
	 pFk61tYjn7RndzUwFDeI7juo7Kyf+/Ww2NknpWLdVuXA7bT1xnCzKVyjptQ4iYP0lP
	 kHl8HyyBX4OFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBBC624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171209358.6076.15936030848416269320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82df5954e5a2466d42c140a48c7771fedefd117c7208613c066f18357d811755
Date: Sat, 21 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771712093
