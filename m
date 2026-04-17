Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AB61EE7C6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776398854; cv=none; b=OF2zSBbk+SpBtzBk3loduIaDIpE5opIkPmJTYGGyhNFn72zXVFV66JCWnsA5+iMVzY6t/qf3hu66zvoFJHfgmWLR717IlOQstUh/OhjugqdA6ciHGdwDKn+5jhxaAsFeMFIaBYiELl4dzbd+F6DOloCB/9twHlg0eroptU9PJVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776398854; c=relaxed/simple;
	bh=M79TpIQ1O30plEyfj0SDl2h5YRAjU4rX2W/DJZvlBxQ=;
	h=To:Subject:From:Message-Id:Date; b=BjZKNYdv2BxUXY0FQJnmrZMo1WlT3AZH9rgAvNQIdOhsEVcpLF3DGZYpYAO3wZwsNIwTp4Bj0ANv9RpnGDf40ebGA5EDle1o9h0m52yyVxERo8BHszd/LuqS7+Bw91PtWEt9K6JAIfAa/+estksQR0mJz+JEEpSD3Uhrs4HOVD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEqJVLB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEqJVLB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBACDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776398853;
	bh=M79TpIQ1O30plEyfj0SDl2h5YRAjU4rX2W/DJZvlBxQ=;
	h=To:Subject:From:Date:From;
	b=eEqJVLB3GW3P09r+M5FtVYx9v4PSIQwI0c0pYNxlsBdx7UxdlsL0gRxJe/UBWy6M1
	 dmUOCSBMxYE+hkWybVATqfX+/dJE9P7IX9LLu5yMPLyVbU7lC1HN8o4PMp3rc5fBrn
	 mmccxQdWwnaPvwHwK81/tDJ864P0IexooHxF5diI8v9XGe6Yz/LYCxID5erb6MUOMy
	 5iXoDLTwr6IvGumtWFHdtcucvICp8H5rk6PuRiMImYA0IjSYRjbRQZ4wA/U92B9uOw
	 g8a4LRqkiTbuwmCNDZxG3RQ7C42BwxZxeXnKco02tpDvXcQ5JHubuB6Ypum9mBKLKM
	 1HJseYM6SVcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA255F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639885368.2353.12411772778270641310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fef8fe9862d35e1df56a150232e52af1e05eb59d51e3ffea266498a7213ea66
Date: Fri, 17 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776398853
