Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246A2466B66
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774997094; cv=none; b=t8tDILeY4ihnx0+YysdweVs+lOYUhf0NLK2W0AAMA7+VugZcMn7hJpzudPXEhctoWeW7B8DK2+oPmiHXwzdde15ESZ9ZcwhncBH7XaG7x9rS/TfLuKQ0OIUxXtMIAAhGw2jsitC5xaKsh+Irc+HzjA4ktc0Ll+j7QcdUqKvq/ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774997094; c=relaxed/simple;
	bh=vhqd/wMlhqR198SpQWC+Cwfq8da4fX1kIMj+ZsQamOs=;
	h=To:Subject:From:Message-Id:Date; b=loDdYN6siqPHTlHLUxk+jpXHpaIWrPvDKgsqvFw0/WvPjPpzQQEEByuIrcnlvZoO4j5szPVgLQwu7wd7jDs4QSyzDdykZmYLUIu7LJbTpq7SBq8ebPGVGMe1vew15MzYSmDNm2BUMKjtY3g+izUoCcRFKcEldFmsqowUnUUo6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac44anD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac44anD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB115C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774997093;
	bh=vhqd/wMlhqR198SpQWC+Cwfq8da4fX1kIMj+ZsQamOs=;
	h=To:Subject:From:Date:From;
	b=ac44anD7Gv5FCTaIKzJ7Vs26QRwhEjN0D+7RLVeThITk35lSfbpJgRZ8K+j7NB/4+
	 hrdPak8GU9pSN1soFb48wtrlbIWo+xVIo+mBOOGuqpLR2MqFjxWRYyWiZUSRUl87gk
	 l8EeT5xeCmmSmbf/fKHhJ6YoO8a+FLbPnneVIBQKhmxgUoiCmR8t6qIroTkGo13rst
	 mltdBuA4DHkYvKhFxs8pH39Aq84HmLGgonYgUinokOxWlGfGB7Us0v3RfzsQwQ4cby
	 FxtgaTknv4BUqqfwtiMdnfIT89wLaVAhM5vuofkn0V6icunr3aLr05OQOMkD+z0akJ
	 +4P3NcIQgXliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A74E10F9303
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499709359.28157.16551175899622569912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d993d48018efac39c464279fa17fe7bcfb6e490dfe021272a4cd52a05a20c46
Date: Tue, 31 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774997093
