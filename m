Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792427434;
	b=E4oVQAe0X98KZcPxHgbKUNu8xWqJa2V8T0OiC8401gkAAWnpIaQ8aNPbnQlTNUvRAo0J
	 oud8Pw4JeU2CgU8bdY6JApF02w6RP2bd4YbKtwXxbYbO4r35SpkcutCAJmAly3xLQM5wc
	 +2VOtdrJqiaANIv38djYgqnZrGTR5WKPuieTlaFWkdc9ggKBj7TCUSIJEyWogsPaYg+Y3
	 B4ngUyoyOwMblSjqsak5+EwBFfyIuNTRO/yuCnLo0/F2j/BE2YkgyCJd40jaX7Rqkbeb5
	 kIjOFwLvGqANe7iG9IzrYBAZcra9r4YdSu3VtkAsw3mAX8/h2eaLaLK+GXxaNKHYiJw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792427434;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=x8roNv8vR367cHlwt7aIXDDzrJtZ6wOoO3Ii+qpbTKc=;
	b=Fe3VixZAqnc71Cj7pCbQrIQ9z4o3yXhAN7EJNVm/MZrYEJB/POL48u2qeKBkmvN/9ujg
	 vfV7BQAsNwx01btGP42FPm3EIMrdgZtfKmrXVdiYxQYwLrw0XiIJ3XD9fRACA9HGTOftR
	 K3eCHCLVRVsQ2/UCripIVT0KAtKsTz5TqurE4GqIJAOOPCRb5eefRuzu6afM64gNbIpZ8
	 Sfrti5Tww3jgFuvZD4Z1DrZRL0NrqavIgS7XO4cQqo2Kikj69sXCOkio6eUTAMzE8DOic
	 KQNpmALR078U8lYgR9Lkniyiokvs9e8wl4ZX5PEVfWMeN1ILctcyzmhCDuwxfCE2IOA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=CTczuzwo;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82DA606A31D
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=CTczuzwo
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D6225771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792427434; cv=none; b=Y6N4OlrKOtj7cim5+jxcoNS0tS0CHCC1Qm9ghBpCXYhY+oTUsJIJtr6OkbB0o42wGITTX3B2ITbyjrWGnH9yztutztrNkH5aOOr3E5ieNCtfwV+VuL8HQdLZ9lic3FPynwgRYEfCaaAe9EHuIJn8xpcAr1Os/1agXoe6KxhtRdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792427434; c=relaxed/simple;
	bh=x8roNv8vR367cHlwt7aIXDDzrJtZ6wOoO3Ii+qpbTKc=;
	h=To:Subject:From:Message-Id:Date; b=LjD4fFRnCB3p+2JgSR3GnYkYxvK23marxsYqwAnEm/y8TFHPLaUdjFhmxPxgPUPAF2ExPlLW36KY+N6rSJtEWR3CvNdzYt0zijMzwoqKwyl546RAXo9WRa1CVgv3bqlhwWMWhtw6LgtThimj3nbC4Wb08jAJOlPEADXGVw2zZuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTczuzwo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC67AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792427433;
	bh=x8roNv8vR367cHlwt7aIXDDzrJtZ6wOoO3Ii+qpbTKc=;
	h=To:Subject:From:Date:From;
	b=CTczuzwoLkc/vzJ3m6JM+zNhv49UxqFOVxu8Zv7MYTqNyqHJh3Yrez9NDyc+Z5zdf
	 Yh9FL2sCw2dI5+XqX/SFH+m6pC0KcJtV11PwYXHl9dg9xKTTb23SK0KmjIULXrcFb3
	 WidyJu1m5nf/ApiAoFLmnzpdGZFqjlmfDQUGDehSQIQYUWn5gIYCArndfcpWY6puNW
	 ObFp6dxjSb1v8REvz4Zc7N7sh6U9OS8UKCpxaBoYY8dI6DNVIPpCbtHWsTNB3fztEy
	 zuxdotY1hOyPXuaTmhvF62DJAv3RqeUX0jA3JeaEcrH9sg0PXwTKq6N8dOWWpED41s
	 zFdnhLm1b3CNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4929CCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242743368.27129.18328050916870428541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dc36fdb0641079239e611d904b9afb96d447d3b8431159aa882ef385d481d8
Date: Mon, 19 Oct 2026 16:30:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792427433
