Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE51BD4F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736795754; cv=none; b=j5+rZaCVFg3OKH5NCNeAxkg16Ttw7LWZX8CQcGct5U5cAp3KQ++F6k0p1Ykq7rS/zoFTPhHh48c45vmmdbZUd2CBZhTdxulyZoSFTsu6Iad7yXGxZ5tVRrwmOgP0kxlFhih7yxM8v11lnJj2iQWCWOl4WUVwMSP+xqUtfAXn86E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736795754; c=relaxed/simple;
	bh=t2qCvuv3tc9C6QzXSDkBmwE1meVdwWO4lt5MMCAfgrU=;
	h=To:Subject:From:Message-Id:Date; b=FbRv9xsCm1CV+jx5GSPIexdvVque7eN+OvjItoSNvwd0FiHOxYey/2SZSjLdfCX1pczgx3QWT0iypqiroK0FDdGoc8yavcNXV5SNFkjHKsY1QwoeQgl/zlB0IbY3mxPjG1rYV6yEe0d3LpDpcZeDJBH2FiKi2FUba1vIgHPXa8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFy21r9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFy21r9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E3CC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736795753;
	bh=t2qCvuv3tc9C6QzXSDkBmwE1meVdwWO4lt5MMCAfgrU=;
	h=To:Subject:From:Date:From;
	b=QFy21r9QmGjtqoLaNmbgJ9rLG72LgkRwwwyUQwn5lPBHUVWSlLvAwyhXCy7uix8lf
	 kDLm1W8DefJB1oHjPlmNn8WmzHLdx6Qhl0ib1Uni9IswZ6KqbFPzEco3t5ZCE3leEo
	 D+ks+UYRkJKC79EtySMP0gMNKqczD6L1gNmMwLzGQabthE2DSxNq8OJJIDwQgq7hgb
	 4SlvLZjtzrszCyOxZX279U0Aj/XvOzXlkI1mJAR/iV0E+Jmh6hQnaTOQki27zGv+kj
	 tb7U1PrBI5Mkpb16Re1AmVzMIYYg/Ip6tyPnRq1l0gstSTYaCYfsYVtQJrgbDCS80L
	 DC041E09B1Xxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034FC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679575358.466.7246532525889270106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848bd1c7b87ae33831846b9d21ab5586c29042ae6a93f1424bfc56b0204ad3b6
Date: Mon, 13 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736795753
