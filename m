Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E966519644B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742802595; cv=none; b=fj4FtnfKozy+YqoPJIb8sBtdhSIhFtZLqUmD+b370ksE6DohykI0hvb7LZVRZwI4HmgwKVQdg9Y7eg1A0eRMclR3UrVrqJ6jdt8TX7X3QJaRVWDdeqNB9uWvNGIfEjEGoEjKbsEaksuA5u+dF63Ipa3rPABJZxYl/ENAqgzhaj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742802595; c=relaxed/simple;
	bh=TJXvNEI4E1U5R2vYPitDXdXyUJcW5ktXFjNSKsBeCOg=;
	h=To:Subject:From:Message-Id:Date; b=mAe7g27VvHtLPknuOyzsnRB4L0QsHAQerOfdJJgPlx8ZmXOi1r54AHbrGm76BbPM9/6uQVGgX/82BXj2X+eUKtDS9d9qoAysQo07z3Uq82YL4On+XTaDaNP7ceIXjCMeVWpqMAGwu9l+KGXIiE+ecEJSRzRH7K3BMDYlkFGYzYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wqwf88k8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wqwf88k8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08C1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742802593;
	bh=TJXvNEI4E1U5R2vYPitDXdXyUJcW5ktXFjNSKsBeCOg=;
	h=To:Subject:From:Date:From;
	b=Wqwf88k8F6zdDDGE3/oRgNLCMrrQvzqG4/Beti8nlyLDm8vb7ZBkVJFNZlaAHcPGu
	 2xoQfuifBtDKmDeU9YJ97MEY6VHs9uF59F0BgvzT96XHZd7axFz9o7NAYcWxGm8s4E
	 O2f0uoD8ns4C6x/Hyr3j17p8qL3A3+07psIGL6byw5PIbRszYtIH9NSvcgi1d/noFZ
	 kD6ebsxlgKycEXgnjGyU3D6RRHEJT8COoWBKgqx/m+Vp+oejm2yE0ovy3VreL0DcSx
	 Hluc/WfK5xwq1cGs06u1EHjpGD5wMats7KEzyJomoniJGJULR7W78IFGXpnazocqYA
	 m1+WrIb4ax0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78AC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280259360.5564.3694576047755207493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b383a2f6bd35ab0b7123eaebcc0247ba542368ce85544cc1d09ffd511d49e55
Date: Mon, 24 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742802593
