Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4E33D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754823594; cv=none; b=U3Deof1Zn2ocs2Smii7ic0y1zPW60vtoGc62S1YVjJ8y+pz2QnA0beC68DK/mMrEo7/mbrkGOS+Q6NWQlZej4MDWUFQfQiKyR9kbzxraNZNir02bO97W1BLK4ZYixq0atsCE2GjAYBlq22BkXaAM9QV8mWOAYGdp0SfHQD0di0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754823594; c=relaxed/simple;
	bh=lTft0ts26x854rfSNwPSF5OBy+cvwK3f5O8WlZzoNuQ=;
	h=To:Subject:From:Message-Id:Date; b=CWV+j4QJWPZssH2UYhAdLo3Y0d09PMEPySCMAoON49k28Q4/oarzXTDL8cMEBbn0pmhSB0Ht/pyNWeMQZL4duEcrUl5B23gYqGpPBnGoVuMc7gra/ggGzKG1WC7QRLEMDtD7UQjJf0UrBMFlzypGs8xFU2H0kgpQ9xhilw1gB+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVx+JIZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVx+JIZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A706FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754823593;
	bh=lTft0ts26x854rfSNwPSF5OBy+cvwK3f5O8WlZzoNuQ=;
	h=To:Subject:From:Date:From;
	b=YVx+JIZyhS9lFSqiYfxb7BvO0sRJdT3LYwjq/y4DxgJn2eum9hP6ouKw6OghqGR3h
	 U2bse0DThx4/peGraFVlCn98PZI3BZO+hdSuxXytrYZV867F+9GWdyCs1R3hBrbUBu
	 Iox8Nl2R0eFm+w1d8YovIir2up+i+Ib9RGxXa4K4+VCDxOqVnswbBQZQt25u4KJXRb
	 VawXdD3K/calp3nEuZJv0aBZ7ZYnxCRM3Ebgx5jwrallPskJwJOpdFIpEUhLIArOuo
	 qUU0CGbme80YX3uL1oavBbZ3YbzIhph38sHE1FxOVlvAnLtbpw8WNjWXUVOBNoOcrx
	 Kx075UAJ3epxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482359357.31947.15547064651377803433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ad73bcd4b843cce6f581c1b7d97b7ec238d3f8c28b31e132e2279bf6fe3924
Date: Sun, 10 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754823593
