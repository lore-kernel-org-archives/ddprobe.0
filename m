Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E322EA754
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789446034; cv=none; b=eeYc/4EXqDMvJUSO+WOxJZeGzM2+3QTTFaTTSsd1QSUn/5KgWrMERYZdstUv+7WsoOO5LxEEypls1l1tFcQkX/g+fBFFhlcT111venmMhXW7IPUpBZxmvWR9iPOAF0ZY0CLObBE6qf+iJ506nY+HXQhTXxYlhM0gmRSmXA+PdIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789446034; c=relaxed/simple;
	bh=MKps4OHDpyTaFrQnJPnA+3YB0DrTHq6vKdnJn0/QrEI=;
	h=To:Subject:From:Message-Id:Date; b=V9ZcXlC+K+Nubc0t+dJd+hd+zeqjE8OW+tqwTAjHEebjzK50LOBD7Ik8TCSikaRnrxCWOlGVX6b/boPX2VoPoYWZh+wc1FMYXFOW3UXBoql/KCtcPEHhN2w04llmp1xqtOvNrmHi6Jhcru/A55yYeBWVfMhq1SJPy9iKQ+eMuus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx5+IDuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx5+IDuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7602C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789446033;
	bh=MKps4OHDpyTaFrQnJPnA+3YB0DrTHq6vKdnJn0/QrEI=;
	h=To:Subject:From:Date:From;
	b=Hx5+IDuED8oYAw0quw5RbwUDbBfqqUMaWgheppaL9kwmbBRJz2d/QcdS1CvBMqP33
	 iJTQq05ejTs8kfSJILXrj1BFMn1gXTiRDmTLLFJhydkdiGBLPaKiWv2urVu8wPhu3s
	 jUqSk+k2RGNS2B58FX8GTKVSVbnpZI9swvcV3QKVC89jZuu7sBcpJwKGXf67sYWwpP
	 7Fqa019qpTydDbnTPQA2cw7+GLAYKsUfRoa3fQckaZr2GbSQjqY1A6gZkLecmaxJc7
	 fVBL6GF76L+lxwYvqY++ImwlzByKEL7H+BO5lyDaFmrOs03OFkUmNkSDOB1OfpEBx4
	 BYE8bdUFEz5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF75C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944603369.9454.11961610935165609315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871bcf1b90e7bf5064b37138c7d592aab18d3f3c6d16b09f1046537de4fb1680
Date: Tue, 15 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789446033
