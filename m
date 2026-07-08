Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AC03F871B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783501714; cv=none; b=Q85u9kUmlu5cXF1TV3XtSF+1mIuGfVU1ofryO/ztJGwYn4RRbnyl1heOMdtVbGY4YoBhN3VO0b/jDvFm05XKfNGD//iwCuZIz6IGRA0ffrDX+k611JM2umSH4r9o4dCEBA4nzVbyDKUTTGE6n6r1qus+gRSojyClEHoufyL4LFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783501714; c=relaxed/simple;
	bh=sGp9xtSpMO8ZauM5LwB53knB2aVxKY28pKUCUj6LbMs=;
	h=To:Subject:From:Message-Id:Date; b=Gf+lN0a4NICUihR8naXyo9Kaeo+jUN9/TS+th7k7LYXbj/8QAGxxid1W0O7Mc7g1gu0RC3NlUJUBskKvKhLZ8/GeIAfCB+MGCT7r7jKqg6S9zs+Omo/vGoGlI2CL4k914AVgWGDb4zYWr7F+oEealZkwYfjLDTCWBKIgVAXj5C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Merh0jOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Merh0jOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA728C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783501713;
	bh=sGp9xtSpMO8ZauM5LwB53knB2aVxKY28pKUCUj6LbMs=;
	h=To:Subject:From:Date:From;
	b=Merh0jOP7N2ZmHy6qda+fiBVoRNTvNXwdr08RktA3KvcAak+Urd+GFLtF6zH/qnPB
	 6iPg4RFyFu3K+b61wMV/LigpgTZeUdosVzlDZZheqiN8m0KhU/Kr8kOvVR0FODtmRd
	 z6iEhH0H/BCpvQSEIYQesUVnucb29+OLpQaZq9Nr/0aRvGrdokR2J6oSbtVuJLTPUH
	 4pePHoDUtoqNqREuNEjnIzkXwuvFqtiMZ2WaDM0u5iV17P1R4HgrAORdQt5SJqdbyK
	 yiMOxYtu0ids0LZbfwHkmuQXtAyCZfscbmlTFsehtz5V+hJA+AK6xIfvLS4yLDGsWl
	 FZUFlv+DM0ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA39C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350171369.12349.12384928669473206157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657212c2dbe49820856b8f41f5858e8bfc119417bf05f4ab901e149f75f888e2
Date: Wed, 08 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783501713
