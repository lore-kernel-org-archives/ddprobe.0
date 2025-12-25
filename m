Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209BDEED8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766702634; cv=none; b=ISSrKDG+2DAXT5Oj3iDk4h4kTEQ7RzT7I/o7h+4Wvkxdr+BOLTdpoRRj7Jzs7V5qaG+jbaErxF8e4oA3nhtqBRhn5vZMuB5RFTO75L01opqxXJPQuhb1y7HzplsTWJSVUnz41DSkO6n2gk54RBGA93MVrZNES+bxz6kL4t6c0FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766702634; c=relaxed/simple;
	bh=dt3myx6vozeNX4UczzdIYumcgSNcaW34BrkjgOBlp0w=;
	h=To:Subject:From:Message-Id:Date; b=Fxp3aIbGpSUwS5UmVL7Cyn4WdEZUR/e6UgtfXtlFEqgl7pnBkyL2UMHd6ovCBGaitDZ7hMm16ZviT4NU2ew0LJDvgZkNAZ3LC2gF2ac3h6i81uSsEYQyDa8nXixp26DggeHU9I8BpjxSas3OtsyLgjt1p9ikeQl6/xVWfm71WkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXn2pE7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXn2pE7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766702633;
	bh=dt3myx6vozeNX4UczzdIYumcgSNcaW34BrkjgOBlp0w=;
	h=To:Subject:From:Date:From;
	b=SXn2pE7dGxcIwTiT+Zcy5J/xAfTkCBKbIOcLYHTHDj49f2tUGfrZTQeW+v7dS3Cm+
	 Qo8S/CP5y2uOXzKIN8JKxVVQAGdD4NxMSTB4I9fPC20yC4T7M/Z0jonnAQJC/RZNRd
	 Sm0r6ExtVTayp4k9XX3Ltwxzi6MKxkfVf83DiWAAAeyF1w0VDGUP1x7+2QvN3uKxkK
	 SGqDVPyQsnBySudA+r/bqqma50ealyYNKou1XENWlZ0784Vz3JSnFTmQtzJ3xvdXhy
	 WfHTWp7aIO956NmD7bhyCHlJ74X0WcBHFmd0h5mPnCKWNjzcvRpOLJzXCuUixBHA56
	 QjH1p38eoswMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98371E7AD71
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670263359.8099.8104139430076472322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1251192dff9ed2e3dddee0c6ce52e8a14b3cb5f8efb5a763d2c8920911aeb119
Date: Thu, 25 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766702633
