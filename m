Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5231D3D34B6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786676434; cv=none; b=QPpMnH13A4Hf1QaivEumw1UoKh4SQr5ukgXAcDZAkporvf+OspMNdrZZmEzpSZRCFE/frxtIQ4wdJdTrsMHWWlqI548IolyUJHEv4iQEDrRexswCRetPhffZu/6WxF0T+e+cg6blNrdkT7EzoIJTrhIWv8Q5MleezSe+n7l2Rrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786676434; c=relaxed/simple;
	bh=IOFRDa7yNqc6W1IpoqLJmgPueDW39xG2P5OEW/dAzvo=;
	h=To:Subject:From:Message-Id:Date; b=sXhv1bn+8HJCo/BhEYL8jxuFQJZwXXUbc67A0et+tEWqgPWYVTZIRIRennHz6kS4ESLSUYfvHaRPH1oELo0pjDu2rZ+xWYW4YUCHCSe+bvioqkqGA+wDiOEQ0JFytdVPQDvDPwK7EzeWg9vgNAAihLFw8u0MKYjFVSNWJ5NVcHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0hZonYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0hZonYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D151FC19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786676433;
	bh=IOFRDa7yNqc6W1IpoqLJmgPueDW39xG2P5OEW/dAzvo=;
	h=To:Subject:From:Date:From;
	b=J0hZonYq++Ns4nt5P+xJ6uDB5w1OoJUzAGERHET3+YWihPznAxp+q1ObjdeRyFJrC
	 qAwoukGtf4I/f6jeISnLo0IWXqa3V6QACo+EjkrKtaHEYBN4E/RQHzS3uf621bE+zl
	 CB2IuiqEReVX6gAXCJ0OdcdqhfNkMrS4EzJrO8w/wbuSFlpVPvSk33sRFwJlKXxmIn
	 jx3+MBMiTXQim3LhTD8acPDHCvMstFt/jTw58L7n/TYz4OmCnA212SBrRkva+2Zm+9
	 IFxXE08vpaEQhZMoRivs0RMW2yLbf9BWBF4I6Gdb5s1z79yq63xhF5meVbMMaP0hwl
	 QL21qFa4KYx/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBBC5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667643368.15473.7470395862562220873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99997b549a6f41ba48fb852436a78bd2c5c7b900124f7581a53b7fdacd828130
Date: Fri, 14 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786676433
