Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA381898F2
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724147154; cv=none; b=efK3cLKN3MxNOtveI3CjqiIeJOBBMqD4yEzkwd1znUd8gwjRmmge4fNE7dFkEcoGAdPHrd4BBG9so5RFtfc/QlH9cg4r/cj1mg2ztV9LbxEBP5FL821oyN4BNjE7ptYAg5jaSeHGNUHL6bSh+L0YIWveGBCwsT4EU/hdSgOJirk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724147154; c=relaxed/simple;
	bh=/kIdQaClrtfKOLwyKfoIt4Y2q7L8xs3I7iw2WGLwI8A=;
	h=To:Subject:From:Message-Id:Date; b=XO9DDYFf7D28k91mA2bfs2MjFTZIX6tamybHwWUOlLAYmC+2hfJv5yK2XBI7RYWeWUBUDoHKaatLbz0IvITU15+JAlTfCroCVLPqiJHjUaCqcuVu4BDIE2wBHDVI1sb0Xwl4rLdVnQBdXn/1BiyGLKex9p8TrUC4c2Trjw6xHp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frhYgNU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frhYgNU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDB5C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724147153;
	bh=/kIdQaClrtfKOLwyKfoIt4Y2q7L8xs3I7iw2WGLwI8A=;
	h=To:Subject:From:Date:From;
	b=frhYgNU3AYfZhNFeqNVrwCQjGU80jkInA6DI0cgr0YujbScwh7wRqsevDx6Vtbqj5
	 JRxb4sgasAkobbDDCICaHoqwVFYOSmqNCn9EKlWKo+NkEM2LAqPvqir3caUmAuqcXD
	 P2VDWhUaan+Ci8OCbrZYcSvrjRtrdLNPfctJi0XW5DCMdlSyRDZk/h7dI1gRZefSKl
	 xF8LxnAJRdUoW0wbJtoOlg0WtaRvu2dElanpD2gPU/rGRB0whvBN47ICPDZp1rZfxm
	 edkZT74AslX6ZY4zokVGZ4iJkwAukSyWZvYWJglnsrx+TbIRoYeatORcdwwKqe5gTH
	 FRujpY3JoYGNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AECDC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414715362.22896.1822018051158437054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37525788d97957c50a592294130af6deadeb8c7ab3b9a117176073457560c51
Date: Tue, 20 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724147153
