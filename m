Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3858022AE75
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742572194; cv=none; b=pH6PuYumYUoT9eFUPQSj+8NYJ0owXbOpHJCF2ggHLi8Oql+LKuQONFyN2qD7i5VBJlCFlRi2+h+ieJ6oD03OHX/HUz0wWJ2MKRyMSLw7yY+g5RUaEC1Sb1QjNFLRz4/8SpEkl+5eDMxZv23aQUkzeUA7oMwV8v4foYuiQ1vlg8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742572194; c=relaxed/simple;
	bh=WqFwq2aHACq8/f8dEuo4nNe5AeYVdj5WQMLDL3RZgSQ=;
	h=To:Subject:From:Message-Id:Date; b=lZi9uMc6sGC9GRQVqFExPYF9DIUOjsL4KEMrewm68M8n7NWro701lgaeonq1Q6Ehl2B0oHtKlBmocXNhfKoxSReCVA+Qo5S0ZhTMiLy1ctfN4/q74picbO4pKbko71zYlSnIKMS30u7HN/uWJ1y8VLwtXalg9A1AjBWOrrwCCsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V92idvcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V92idvcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F8C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742572193;
	bh=WqFwq2aHACq8/f8dEuo4nNe5AeYVdj5WQMLDL3RZgSQ=;
	h=To:Subject:From:Date:From;
	b=V92idvcCJIJZQbf4QlHuFbOI/EeKtOLELZ7f2TkxEr8KZzjssHA5HMSVLzVaQVb6q
	 AagkODGp7tNo7JveHX2t9BHD26n337C8iZ8CHUc4jIK3AdFldM9L9VjUPxD/xcXD5F
	 Z0SXbHuVSV59HCAMDAQ3G7OHYE1/ohDLtaZTi6eUp7VACKlipzof78w1X6jbsJZXBk
	 lJ8DZqyNp0FohYsicdO+dA3HdjDa0SpVsVCppDD1Djp0Exm4bwMlZil3UDxjL6TCyZ
	 jTYgIsOHztY5iJhjrDUIbV44cebmWfuguy4bhgMkdJ17Vngh5+yS1ByjUbO7wTXVii
	 rbuxeUWgfcGww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E2BC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257219366.19284.10373729641376739271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eee78ee203983f1162a8525516b1b136516df7fe30bfb5093978eda66aeb631
Date: Fri, 21 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742572193
