Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CD020E6E1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744328994; cv=none; b=g8HtYPlLu+Q76Ay0PKjT93YVAZ3pc992fcyzZnvUfCzlMuwyDx4xyVdjPhHQb/8Fv7odFx1jDnlou6AV1ADYLDSUWgcPLKXdYVwsVwxxuH5FfoTpwAnVkPZvxpOsJh8rpPb33ZW51wQJqhHBx6UR5gh/QSSeOC7B6c6jmbRfCR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744328994; c=relaxed/simple;
	bh=Qvj3AEPsTir/9EmpYFloJ6Hhcg3pedVLTM1T86SIYjw=;
	h=To:Subject:From:Message-Id:Date; b=GLQ/3gu4CCxizf5ngvha8MDOpyh/JS7EFLJNZ53VnPf0kX2lxyPXmTKJkg3yEtwwhm94DGCYrjjsa5L3NEbgs/7JuBUss5lDP887C4eho1WN61pA1rn1b2JIZxYtISL89s3K9qrGfqrA4Tpg5qOeVdvZcISjncTHjJL44d+oExc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBnbEdpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBnbEdpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744328993;
	bh=Qvj3AEPsTir/9EmpYFloJ6Hhcg3pedVLTM1T86SIYjw=;
	h=To:Subject:From:Date:From;
	b=fBnbEdpfPqfwc78oFsngO+z2KSCoGaV128roVPS65l7FCeqUN44balXEPwJMdYQx7
	 FPG00Qd1ZpmdNBgjueR25YM/bm54Ww2UxFaFyTyrjnbaOS0RpMENvqdiZ5R5fErvVc
	 B24PzrBIY1Bx6h/jURVCLA8zKYIw4Evr9NovWBi5WZqd7iBTOKCva66WAIANkZD/EX
	 aSleBUAvH3qtV+ooxd3o63LZQmwCKhTXoRQmYW72gHwkp0rHmXBaXDy1Q8ylTzXBB+
	 0doSYlsst//+DtgYpihODhqrYPvtkwehQVngICvRJrGtyc3nwoDWMBS3cxG7I56HPs
	 w8s8sOR+YfgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93610C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432899358.12688.10890922232003512483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733898c2facd33e93abd08d8ad83d4e0581d600acedb3880ff4ab9c6127ee418
Date: Thu, 10 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744328993
