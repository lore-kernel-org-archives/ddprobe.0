Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B99D19D093
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776310654; cv=none; b=s5nUevjtFeA0LOzAdgCcxFMkMT9UszSnj0QkVWqchKu0Uhb2YWM+gt09M1a2NM4pE72nheoDjd4vucAJfA2y5mlWZSTkLoHa0Nmb3Eb53gtB3/Ht2d/57tbMEVyzPpXdotl7fHyaTt5CRQ/sqXwklFHcw1RNTsnNtfXo5WgDHTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776310654; c=relaxed/simple;
	bh=qfCur94dykTC6s85Cxpkj5v9yY2HSK0R9IDQemUysDk=;
	h=To:Subject:From:Message-Id:Date; b=qZ6Exx18lbvTAHYKP+ECimFXLGs6dzSEfp+oUh9KkKKFB554Xa2FHG0pXMvgAkaM0mlofTTBIu75w7257DSw1IBLjQRYiDqcW7HSiA7RCWNgLo5ZVsrhSZDE+9ZNn9JFnl3W1yVvOcJtSw/6E35xgvbtl7NTVVzxySQ1/8ya9G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J58uEaE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J58uEaE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE53C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776310653;
	bh=qfCur94dykTC6s85Cxpkj5v9yY2HSK0R9IDQemUysDk=;
	h=To:Subject:From:Date:From;
	b=J58uEaE1PfSsaQ6D1wGpjLPpwnUZfwYBrhHvJjgLl68Y0GymoTNghWQsYU2geoVC+
	 hRm2W+1eBj2H0If+Xatw3IldrBJ/sCdgWSypLoN8RBEvZjnyhPxqqk6CxWDgDBDay3
	 ao5KsU/qSJ3fWT+FyYetWYNksUhSI+gDOx3hQ83LS7lga4DRRvv3BU8o4XYJNedKgh
	 BCnicJcQuAGo4tKVomUZaoMVWo/585BVwCVLah7IMobcwruALeHmPTA8tUOQ2EVdaG
	 s40jMkTGQVLM2dm0CurR1tL8lB7a3E6O18RPYDubyqi7cxLDvz/kUW5AZ+vnOyeNwd
	 3zCS1r7VQYDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB4EF433DD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631065368.10930.16294950703368825357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863b01e3733c8b101b2d3d534ebb6977c2e5c7f33ff05a6167ca804da8957883
Date: Thu, 16 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776310653
