Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4517027CB2C
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745511594; cv=none; b=M4taGtGDjoiLeb2drSV11j539YfG8j+IcKLqN6YpLpRr1Ph5byNhxQbcH9yRZuWsUgqMkeDH+jDpCx9t30eT0t/lCmJ61jVcU4w6vtcbLaV+QEcwFajMkyxZx0VQ2I+cN9lciKiV23v+VVDqzj7sGDTCJE2TJhRgWYGDjXbRkTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745511594; c=relaxed/simple;
	bh=7eBd8hpigSVFNYcLxHER/nIVNdMO2tOcIFuIwfV0Dws=;
	h=To:Subject:From:Message-Id:Date; b=LjX1/ewNzsL+Txn9tM8om3Kah4d3bDGcQ/cnEvvPZJcDEp7S7s90R0eqpU9z1Zw63h2Vkwibyh9mPjN55lo1bOAU79BVVICQXOlopS/NIbRgiYvgd/wOE01B/aXy6kIa+3nWsQlnhuEg2rLE9aNwP7KXKmFDWjTZoMFsAGJ6W7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNjE4Kd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNjE4Kd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745511593;
	bh=7eBd8hpigSVFNYcLxHER/nIVNdMO2tOcIFuIwfV0Dws=;
	h=To:Subject:From:Date:From;
	b=UNjE4Kd8ai8pqKdh2ilDbqo1+SXBl7ezeDqnfLcwZ6uofFcF4lWhOQCOeSq/ZmO2n
	 0BeFhd7FYp59QuQTyoyqvYU1a9/NGkyEdBxlQe8LwOjkHOEgFjca1qSsWM6tqwXAeG
	 9lx3FQvyBjG9/fvcc8VlKrd14/HFntqC1y7sSAjhtnTpg/r91JCkwcTn8OVuc6FPwX
	 BzL6QHxiS2x7KBMcw5gaB4BLMhhYzaEyIJr8TS3Kzc/1ctph8M0KgKRdwC+R7KwmK+
	 HbCHZLyx8ZCSQBwAhqtqXtFaoyulkrwzDh2Z1NQb1RomdwxELQQm4dFKQoOoGntSQR
	 nWuc+IW4tUmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14DC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551159357.26493.169697809358847122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411842a567337645ca3dbeb66bf602788f82cfedc955ba85039d929cc7f5d49b
Date: Thu, 24 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745511593
